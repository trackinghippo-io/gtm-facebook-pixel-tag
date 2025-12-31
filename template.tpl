___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_3f7b9d8a1c2e4f6a9b0d",
  "version": 1,
  "securityGroups": [],
  "displayName": "Facebook Pixel by TrackingHippo.io",
  "description": "Sends events to Facebook Pixel with optional Advanced Matching.",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "MARKETING"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixelId",
    "displayName": "Pixel ID",
    "simpleValueType": true,
    "help": "Your Facebook Pixel ID.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "eventType",
    "displayName": "Event",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "PageView",
        "displayValue": "PageView"
      },
      {
        "value": "ViewContent",
        "displayValue": "ViewContent"
      },
      {
        "value": "Search",
        "displayValue": "Search"
      },
      {
        "value": "AddToCart",
        "displayValue": "AddToCart"
      },
      {
        "value": "AddToWishlist",
        "displayValue": "AddToWishlist"
      },
      {
        "value": "InitiateCheckout",
        "displayValue": "InitiateCheckout"
      },
      {
        "value": "AddPaymentInfo",
        "displayValue": "AddPaymentInfo"
      },
      {
        "value": "Purchase",
        "displayValue": "Purchase"
      },
      {
        "value": "Lead",
        "displayValue": "Lead"
      },
      {
        "value": "CompleteRegistration",
        "displayValue": "CompleteRegistration"
      },
      {
        "value": "Contact",
        "displayValue": "Contact"
      },
      {
        "value": "CustomizeProduct",
        "displayValue": "CustomizeProduct"
      },
      {
        "value": "Donate",
        "displayValue": "Donate"
      },
      {
        "value": "FindLocation",
        "displayValue": "FindLocation"
      },
      {
        "value": "Schedule",
        "displayValue": "Schedule"
      },
      {
        "value": "StartTrial",
        "displayValue": "StartTrial"
      },
      {
        "value": "SubmitApplication",
        "displayValue": "SubmitApplication"
      },
      {
        "value": "Subscribe",
        "displayValue": "Subscribe"
      },
      {
        "value": "custom",
        "displayValue": "Custom Event"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "PageView"
  },
  {
    "type": "TEXT",
    "name": "customEventName",
    "displayName": "Custom event name",
    "simpleValueType": true,
    "help": "Used when Event is set to Custom Event.",
    "enablingConditions": [
      {
        "paramName": "eventType",
        "paramValue": "custom",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "eventParams",
    "displayName": "Event parameters",
    "help": "Optional parameters passed to Facebook Pixel.",
    "simpleTableColumns": [
      {
        "name": "key",
        "displayName": "Parameter name",
        "type": "TEXT",
        "defaultValue": ""
      },
      {
        "name": "value",
        "displayName": "Value",
        "type": "TEXT",
        "defaultValue": ""
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "testEventCode",
    "displayName": "Test event code (test_event_code)",
    "simpleValueType": true,
    "help": "Optional code for Facebook Test Events."
  },
  {
    "type": "TEXT",
    "name": "eventId",
    "displayName": "Event ID for deduplication (event_id)",
    "simpleValueType": true,
    "help": "Optional event_id for deduplication with Conversions API."
  },
  {
    "type": "CHECKBOX",
    "name": "requireAdStorageConsent",
    "checkboxText": "Require ad_storage consent (Consent Mode)",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "When enabled, the tag sends events only if ad_storage consent is granted."
  },
  {
    "type": "CHECKBOX",
    "name": "enableAdvancedMatching",
    "checkboxText": "Enable Advanced Matching",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Pass Advanced Matching data to improve attribution. Provide only data you have consent to send."
  },
  {
    "type": "TEXT",
    "name": "email",
    "displayName": "Email (em)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "phone",
    "displayName": "Phone (ph)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "firstName",
    "displayName": "First name (fn)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "lastName",
    "displayName": "Last name (ln)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "city",
    "displayName": "City (ct)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "state",
    "displayName": "State (st)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "zip",
    "displayName": "ZIP/Postal code (zp)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "country",
    "displayName": "Country (country)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "externalId",
    "displayName": "External ID (external_id)",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "dateOfBirth",
    "displayName": "Date of birth (db)",
    "simpleValueType": true,
    "help": "Format: YYYYMMDD",
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "gender",
    "displayName": "Gender (ge)",
    "simpleValueType": true,
    "help": "Format: f or m",
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const aliasInWindow = require('aliasInWindow');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const createQueue = require('createQueue');
const injectScript = require('injectScript');
const isConsentGranted = require('isConsentGranted');
const makeString = require('makeString');
const setInWindow = require('setInWindow');

const FBQ_URL = 'https://connect.facebook.net/en_US/fbevents.js';
const FBQ_KEY = 'fbq';
const FBQ_ALT_KEY = '_fbq';
const INIT_CACHE_KEY = '__th_fbq_inited_ids';
const SCRIPT_FLAG_KEY = '__th_fbq_script_loaded';
const SCRIPT_CACHE_KEY = 'th_fb_pixel_script';

const ensureFbq = () => {
  const existing = copyFromWindow(FBQ_KEY);
  if (existing) {
    return existing;
  }
  const alt = copyFromWindow(FBQ_ALT_KEY);
  if (alt) {
    setInWindow(FBQ_KEY, alt, true);
    return alt;
  }
  setInWindow(FBQ_KEY, function() {
    if (copyFromWindow(FBQ_KEY + '.callMethod')) {
      callInWindow(FBQ_KEY + '.callMethod.apply', null, arguments);
      return;
    }
    callInWindow(FBQ_KEY + '.queue.push', arguments);
  });
  aliasInWindow(FBQ_ALT_KEY, FBQ_KEY);
  createQueue(FBQ_KEY + '.queue');
  return copyFromWindow(FBQ_KEY);
};

const ensureScript = () => {
  if (copyFromWindow(SCRIPT_FLAG_KEY)) {
    return;
  }
  const fbq = copyFromWindow(FBQ_KEY) || copyFromWindow(FBQ_ALT_KEY);
  if (fbq && fbq.callMethod) {
    setInWindow(SCRIPT_FLAG_KEY, true, true);
    return;
  }
  injectScript(
    FBQ_URL,
    function() {
      setInWindow(SCRIPT_FLAG_KEY, true, true);
    },
    function() {},
    SCRIPT_CACHE_KEY
  );
};

const buildEventParams = (table, testEventCode) => {
  const params = {};
  let hasAny = false;
  if (!table || !table.length) {
    if (testEventCode) {
      if (testEventCode) {
        params.test_event_code = testEventCode;
      }
      return { params: params, hasAny: true };
    }
    return { params: params, hasAny: false };
  }
  for (let i = 0; i < table.length; i++) {
    const row = table[i];
    if (!row || !row.key) {
      continue;
    }
    const value = row.value;
    if (value === undefined || value === null || value === '') {
      continue;
    }
    params[makeString(row.key)] = value;
    hasAny = true;
  }
  if (testEventCode && !params.test_event_code) {
    params.test_event_code = testEventCode;
    hasAny = true;
  }
  return { params: params, hasAny: hasAny };
};

const buildAdvancedMatching = () => {
  if (!data.enableAdvancedMatching) {
    return null;
  }
  const match = {};
  let hasAny = false;
  const add = (key, value) => {
    if (value === undefined || value === null || value === '') {
      return;
    }
    match[key] = value;
    hasAny = true;
  };
  add('em', data.email);
  add('ph', data.phone);
  add('fn', data.firstName);
  add('ln', data.lastName);
  add('ct', data.city);
  add('st', data.state);
  add('zp', data.zip);
  add('country', data.country);
  add('external_id', data.externalId);
  add('db', data.dateOfBirth);
  add('ge', data.gender);
  return hasAny ? match : null;
};

const getInitCache = () => {
  const cache = copyFromWindow(INIT_CACHE_KEY);
  if (cache && typeof cache === 'object') {
    return cache;
  }
  const fresh = {};
  setInWindow(INIT_CACHE_KEY, fresh, true);
  return fresh;
};

const pixelId = data.pixelId;
const eventName = data.eventType === 'custom' ? data.customEventName : data.eventType;

if (!pixelId || !eventName) {
  data.gtmOnFailure();
  return;
}

const fbq = ensureFbq();
ensureScript();

if (data.requireAdStorageConsent) {
  if (!isConsentGranted('ad_storage')) {
    fbq('consent', 'revoke');
    data.gtmOnSuccess();
    return;
  }
  fbq('consent', 'grant');
}

const advancedMatching = buildAdvancedMatching();
const initCache = getInitCache();

if (!initCache[pixelId]) {
  if (advancedMatching) {
    fbq('init', pixelId, advancedMatching);
  } else {
    fbq('init', pixelId);
  }
  initCache[pixelId] = true;
  setInWindow(INIT_CACHE_KEY, initCache, true);
}

const builtParams = buildEventParams(data.eventParams, data.testEventCode);
const eventOptions = data.eventId ? { eventID: data.eventId } : null;
if (data.eventType === 'custom') {
  if (builtParams.hasAny) {
    if (eventOptions) {
      fbq('trackCustom', eventName, builtParams.params, eventOptions);
    } else {
      fbq('trackCustom', eventName, builtParams.params);
    }
  } else {
    if (eventOptions) {
      fbq('trackCustom', eventName, {}, eventOptions);
    } else {
      fbq('trackCustom', eventName);
    }
  }
} else {
  if (builtParams.hasAny) {
    if (eventOptions) {
      fbq('track', eventName, builtParams.params, eventOptions);
    } else {
      fbq('track', eventName, builtParams.params);
    }
  } else {
    if (eventOptions) {
      fbq('track', eventName, {}, eventOptions);
    } else {
      fbq('track', eventName);
    }
  }
}

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://connect.facebook.net/en_US/fbevents.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.callMethod.apply"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.callMethod"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.queue.push"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.queue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__th_fbq_inited_ids"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__th_fbq_script_loaded"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]

___TESTS___

scenarios: []


___NOTES___

Created on 11/11/2025, 00:56:03
