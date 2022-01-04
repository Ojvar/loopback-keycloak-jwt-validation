import {
  globalInterceptor,
  Interceptor,
  InvocationContext,
  InvocationResult,
  Provider,
  ValueOrPromise,
} from '@loopback/core';
import {RestBindings} from '@loopback/rest';
import axios from 'axios';

/**
 * This class will be bound to the application as an `Interceptor` during
 * `boot`
 */
@globalInterceptor('security', {tags: {name: 'KeycloakJWT'}})
export class KeycloakJwtInterceptor implements Provider<Interceptor> {
  constructor() {}

  /**
   * This method is used by LoopBack context to produce an interceptor function
   * for the binding.
   *
   * @returns An interceptor function
   */
  value() {
    return this.intercept.bind(this);
  }

  /**
   * The logic to intercept an invocation
   * @param invocationCtx - Invocation context
   * @param next - A function to invoke next interceptor or the target method
   */
  async intercept(
    invocationCtx: InvocationContext,
    next: () => ValueOrPromise<InvocationResult>,
  ) {
    const request = await invocationCtx.get(RestBindings.Http.REQUEST);
    const response = await invocationCtx.get(RestBindings.Http.RESPONSE);

    /* Check Authorization token */
    const authorization =
      String(request.headers['authorization'])?.toLowerCase() ?? '';
    const jwtToken = authorization.split('bearer').filter(x => !!x);
    if (jwtToken.length !== 1) {
      response.sendStatus(401);
    } else {
      /* Send validation request */
      const url = `http://localhost:8585/auth/realms/qeng/protocol/openid-connect/userinfo`;

      try {
        console.log(request.headers['authorization']);

        const config = {
          headers: {
            authorization,
            'content-type': 'application/x-www-form-urlencoded',
          },
        };
        console.log(config);
        const userInfo = await axios.get(url, config);
        console.log(userInfo);

        // eslint-disable-next-line @typescript-eslint/return-await
        return await next();
      } catch (error) {
        console.error(error.response.data);
        throw error;
      }
    }
  }
}
