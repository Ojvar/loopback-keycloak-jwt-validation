// Copyright IBM Corp. 2020. All Rights Reserved.
// Node module: @loopback/authentication-jwt
// This file is licensed under the MIT License.
// License text available at https://opensource.org/licenses/MIT

import {registerAuthenticationStrategy} from '@loopback/authentication';
import {
  Application,
  bind,
  Binding,
  Component,
  CoreBindings,
  createBindingFromClass,
  inject,
} from '@loopback/core';
import {
  asSpecEnhancer,
  mergeOpenAPISpec,
  OASEnhancer,
  OpenApiSpec,
  ReferenceObject,
  SecuritySchemeObject,
} from '@loopback/openapi-v3';
import {KCAuthenticationStrategy} from './kc.strategy';

export class KCAuthenticationComponent implements Component {
  bindings: Binding[] = [createBindingFromClass(SecuritySpecEnhancer)];

  constructor(@inject(CoreBindings.APPLICATION_INSTANCE) app: Application) {
    registerAuthenticationStrategy(app, KCAuthenticationStrategy);
  }
}

export type SecuritySchemeObjects = {
  [securityScheme: string]: SecuritySchemeObject | ReferenceObject;
};

export const OPERATION_SECURITY_SPEC = [
  {
    // secure all endpoints with 'jwt'
    jwt: [],
  },
];

export const SECURITY_SCHEME_SPEC: SecuritySchemeObjects = {
  jwt: {
    type: 'http',
    scheme: 'bearer',
    bearerFormat: 'JWT',
  },
};

/**
 * A spec enhancer to add bearer token OpenAPI security entry to
 * `spec.component.securitySchemes`
 */
@bind(asSpecEnhancer)
export class SecuritySpecEnhancer implements OASEnhancer {
  name = 'bearerAuth';

  modifySpec(spec: OpenApiSpec): OpenApiSpec {
    const patchSpec = {
      components: {
        securitySchemes: SECURITY_SCHEME_SPEC,
      },
      security: OPERATION_SECURITY_SPEC,
    };
    const mergedSpec = mergeOpenAPISpec(spec, patchSpec);
    return mergedSpec;
  }
}

// // A bunch of stuff was not included in this component (e.g. the constructor to register the authentication provider) for bevity.
// export class KCAuthenticationComponent implements Component {
//   bindings: Binding[] = [createBindingFromClass(SecuritySpecEnhancer)];
// }
