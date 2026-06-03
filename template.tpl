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
  "description": "Sends events to Facebook Pixel with Consent Mode gating, Advanced Matching from manual fields or Google's User-Provided Data variable, multi-pixel support, Limited Data Use and event_id deduplication for the Conversions API.",
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
    "displayName": "Pixel ID(s)",
    "simpleValueType": true,
    "help": "Your Facebook Pixel ID. Multiple Pixel IDs can be provided as a comma-separated list; events are sent to each pixel individually with trackSingle.",
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
      },
      {
        "value": "variable",
        "displayValue": "Event Name from Variable"
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
    "type": "TEXT",
    "name": "eventNameVariable",
    "displayName": "Event name variable",
    "simpleValueType": true,
    "help": "Variable that returns the event name. Standard Facebook event names are sent with trackSingle, all other names with trackSingleCustom.",
    "enablingConditions": [
      {
        "paramName": "eventType",
        "paramValue": "variable",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventParamsVariable",
    "displayName": "Event parameters variable",
    "simpleValueType": true,
    "help": "Optional variable that returns an object of event parameters. Merged with the Event parameters table below; table values take precedence."
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "eventParams",
    "displayName": "Event parameters",
    "help": "Optional parameters passed to Facebook Pixel. Values set here override values from the Event parameters variable.",
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
    "name": "enableLDU",
    "checkboxText": "Enable Limited Data Use (dataProcessingOptions)",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Calls fbq('dataProcessingOptions', ['LDU'], country, state) before the pixel is initialized. Leave country and state at 0 to let Facebook geolocate."
  },
  {
    "type": "TEXT",
    "name": "lduCountry",
    "displayName": "LDU country",
    "simpleValueType": true,
    "defaultValue": "0",
    "help": "0 = use geolocation, 1 = United States.",
    "enablingConditions": [
      {
        "paramName": "enableLDU",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "lduState",
    "displayName": "LDU state",
    "simpleValueType": true,
    "defaultValue": "0",
    "help": "0 = use geolocation, 1000 = California.",
    "enablingConditions": [
      {
        "paramName": "enableLDU",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "disableAutoConfig",
    "checkboxText": "Disable automatic configuration",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Calls fbq('set', 'autoConfig', false, pixelId) before init, disabling Facebook's automatic button click and page metadata collection."
  },
  {
    "type": "CHECKBOX",
    "name": "disablePushState",
    "checkboxText": "Disable pushState/replaceState history tracking",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Prevents the pixel from automatically sending PageView events on history state changes in single-page applications."
  },
  {
    "type": "CHECKBOX",
    "name": "enableAdvancedMatching",
    "checkboxText": "Enable Advanced Matching",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Pass Advanced Matching data to improve attribution. Provide only data you have consent to send. Values are hashed by the Pixel before they are sent."
  },
  {
    "type": "SELECT",
    "name": "advancedMatchingSource",
    "displayName": "Advanced Matching source",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "manual",
        "displayValue": "Manual fields"
      },
      {
        "value": "variable",
        "displayValue": "User-Provided Data variable"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "manual",
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
    "name": "userDataVariable",
    "displayName": "User-Provided Data variable",
    "simpleValueType": true,
    "valueHint": "{{User-Provided Data}}",
    "help": "Select a variable that returns user data: Google Tag Manager's built-in User-Provided Data variable, a GA4-style user_data object, or any object that already uses Facebook's Advanced Matching keys (em, ph, fn, ln, ct, st, zp, country, external_id, db, ge).",
    "enablingConditions": [
      {
        "paramName": "enableAdvancedMatching",
        "paramValue": true,
        "type": "EQUALS"
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "variable",
        "type": "EQUALS"
      }
    ]
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
      },
      {
        "paramName": "advancedMatchingSource",
        "paramValue": "manual",
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
const getType = require('getType');
const injectScript = require('injectScript');
const isConsentGranted = require('isConsentGranted');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const setInWindow = require('setInWindow');

const FBQ_URL = 'https://connect.facebook.net/en_US/fbevents.js';
const FBQ_KEY = 'fbq';
const FBQ_ALT_KEY = '_fbq';
const INIT_CACHE_KEY = '__th_fbq_inited_ids';
const SCRIPT_FLAG_KEY = '__th_fbq_script_loaded';
const SCRIPT_CACHE_KEY = 'th_fb_pixel_script';

const STANDARD_EVENTS = [
  'PageView', 'ViewContent', 'Search', 'AddToCart', 'AddToWishlist',
  'InitiateCheckout', 'AddPaymentInfo', 'Purchase', 'Lead',
  'CompleteRegistration', 'Contact', 'CustomizeProduct', 'Donate',
  'FindLocation', 'Schedule', 'StartTrial', 'SubmitApplication', 'Subscribe'
];

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

const hasKeys = (obj) => {
  for (let key in obj) {
    return true;
  }
  return false;
};

const addIfPresent = (target, key, value) => {
  if (value === undefined || value === null || value === '') {
    return;
  }
  target[key] = value;
};

const mapUserProvidedData = (ud) => {
  const out = {};
  if (getType(ud) !== 'object') {
    return out;
  }
  // Pass through values that already use Facebook's Advanced Matching keys.
  const metaKeys = ['em', 'ph', 'fn', 'ln', 'ct', 'st', 'zp', 'country', 'external_id', 'db', 'ge', 'fb_login_id'];
  for (let i = 0; i < metaKeys.length; i++) {
    addIfPresent(out, metaKeys[i], ud[metaKeys[i]]);
  }
  // Map Google's User-Provided Data variable / GA4 user_data schema.
  addIfPresent(out, 'em', ud.email || ud.email_address);
  addIfPresent(out, 'ph', ud.phone_number);
  let address = ud.address;
  if (getType(address) === 'array') {
    address = address[0];
  }
  if (getType(address) === 'object') {
    addIfPresent(out, 'fn', address.first_name);
    addIfPresent(out, 'ln', address.last_name);
    addIfPresent(out, 'ct', address.city);
    addIfPresent(out, 'st', address.region);
    addIfPresent(out, 'zp', address.postal_code);
    addIfPresent(out, 'country', address.country);
  }
  return out;
};

const buildAdvancedMatching = () => {
  if (!data.enableAdvancedMatching) {
    return null;
  }
  const match = data.advancedMatchingSource === 'variable' ?
      mapUserProvidedData(data.userDataVariable) : {};
  // Manual fields override values coming from the variable.
  addIfPresent(match, 'em', data.email);
  addIfPresent(match, 'ph', data.phone);
  addIfPresent(match, 'fn', data.firstName);
  addIfPresent(match, 'ln', data.lastName);
  addIfPresent(match, 'ct', data.city);
  addIfPresent(match, 'st', data.state);
  addIfPresent(match, 'zp', data.zip);
  addIfPresent(match, 'country', data.country);
  addIfPresent(match, 'external_id', data.externalId);
  addIfPresent(match, 'db', data.dateOfBirth);
  addIfPresent(match, 'ge', data.gender);
  return hasKeys(match) ? match : null;
};

const buildEventParams = () => {
  const params = {};
  const fromVariable = data.eventParamsVariable;
  if (getType(fromVariable) === 'object') {
    for (let key in fromVariable) {
      addIfPresent(params, key, fromVariable[key]);
    }
  }
  const table = data.eventParams;
  if (table && table.length) {
    for (let i = 0; i < table.length; i++) {
      const row = table[i];
      if (!row || !row.key) {
        continue;
      }
      addIfPresent(params, makeString(row.key), row.value);
    }
  }
  if (data.testEventCode) {
    addIfPresent(params, 'test_event_code', data.testEventCode);
  }
  return { params: params, hasAny: hasKeys(params) };
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

const pixelIds = makeString(data.pixelId || '')
    .split(',')
    .map(id => id.trim())
    .filter(id => id.length > 0);

let eventName;
if (data.eventType === 'custom') {
  eventName = data.customEventName;
} else if (data.eventType === 'variable') {
  eventName = data.eventNameVariable ? makeString(data.eventNameVariable) : '';
} else {
  eventName = data.eventType;
}

if (!pixelIds.length || !eventName) {
  data.gtmOnFailure();
  return;
}

const command = STANDARD_EVENTS.indexOf(eventName) === -1 ? 'trackSingleCustom' : 'trackSingle';

const fbq = ensureFbq();

if (data.disablePushState) {
  setInWindow('fbq.disablePushState', true, true);
}

ensureScript();

if (data.requireAdStorageConsent) {
  if (!isConsentGranted('ad_storage')) {
    fbq('consent', 'revoke');
    data.gtmOnSuccess();
    return;
  }
  fbq('consent', 'grant');
}

if (data.enableLDU) {
  const lduCountry = makeNumber(data.lduCountry || '0') || 0;
  const lduState = makeNumber(data.lduState || '0') || 0;
  fbq('dataProcessingOptions', ['LDU'], lduCountry, lduState);
}

const advancedMatching = buildAdvancedMatching();
const initCache = getInitCache();
let cacheChanged = false;

pixelIds.forEach(pixelId => {
  if (initCache[pixelId]) {
    return;
  }
  if (data.disableAutoConfig) {
    fbq('set', 'autoConfig', false, pixelId);
  }
  if (advancedMatching) {
    fbq('init', pixelId, advancedMatching);
  } else {
    fbq('init', pixelId);
  }
  initCache[pixelId] = true;
  cacheChanged = true;
});

if (cacheChanged) {
  setInWindow(INIT_CACHE_KEY, initCache, true);
}

const builtParams = buildEventParams();
const eventOptions = data.eventId ? { eventID: data.eventId } : null;

pixelIds.forEach(pixelId => {
  if (eventOptions) {
    fbq(command, pixelId, eventName, builtParams.params, eventOptions);
  } else if (builtParams.hasAny) {
    fbq(command, pixelId, eventName, builtParams.params);
  } else {
    fbq(command, pixelId, eventName);
  }
});

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
                    "string": "fbq.disablePushState"
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

scenarios:
- name: Standard event fires trackSingle for each pixel ID
  code: |-
    const fbqCalls = [];
    const fbqRecorder = function() {
      const call = [];
      for (let i = 0; i < arguments.length; i++) {
        call.push(arguments[i]);
      }
      fbqCalls.push(call);
    };
    mock('copyFromWindow', key => {
      if (key === 'fbq') return fbqRecorder;
    });

    const mockData = {
      pixelId: '111, 222',
      eventType: 'PageView'
    };

    runCode(mockData);

    const initCalls = fbqCalls.filter(c => c[0] === 'init');
    const trackCalls = fbqCalls.filter(c => c[0] === 'trackSingle');
    assertThat(initCalls.length).isEqualTo(2);
    assertThat(initCalls[0][1]).isEqualTo('111');
    assertThat(initCalls[1][1]).isEqualTo('222');
    assertThat(trackCalls.length).isEqualTo(2);
    assertThat(trackCalls[0][1]).isEqualTo('111');
    assertThat(trackCalls[0][2]).isEqualTo('PageView');
    assertThat(trackCalls[1][1]).isEqualTo('222');
    assertApi('gtmOnSuccess').wasCalled();
- name: Custom event name uses trackSingleCustom
  code: |-
    const fbqCalls = [];
    const fbqRecorder = function() {
      const call = [];
      for (let i = 0; i < arguments.length; i++) {
        call.push(arguments[i]);
      }
      fbqCalls.push(call);
    };
    mock('copyFromWindow', key => {
      if (key === 'fbq') return fbqRecorder;
    });

    const mockData = {
      pixelId: '111',
      eventType: 'custom',
      customEventName: 'MySpecialEvent'
    };

    runCode(mockData);

    const trackCalls = fbqCalls.filter(c => c[0] === 'trackSingleCustom');
    assertThat(trackCalls.length).isEqualTo(1);
    assertThat(trackCalls[0][1]).isEqualTo('111');
    assertThat(trackCalls[0][2]).isEqualTo('MySpecialEvent');
    assertApi('gtmOnSuccess').wasCalled();
- name: Consent revoked blocks tracking
  code: |-
    const fbqCalls = [];
    const fbqRecorder = function() {
      const call = [];
      for (let i = 0; i < arguments.length; i++) {
        call.push(arguments[i]);
      }
      fbqCalls.push(call);
    };
    mock('copyFromWindow', key => {
      if (key === 'fbq') return fbqRecorder;
    });
    mock('isConsentGranted', consentType => false);

    const mockData = {
      pixelId: '111',
      eventType: 'PageView',
      requireAdStorageConsent: true
    };

    runCode(mockData);

    const consentCalls = fbqCalls.filter(c => c[0] === 'consent');
    assertThat(consentCalls.length).isEqualTo(1);
    assertThat(consentCalls[0][1]).isEqualTo('revoke');
    const trackCalls = fbqCalls.filter(c => c[0] === 'trackSingle' || c[0] === 'trackSingleCustom' || c[0] === 'init');
    assertThat(trackCalls.length).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();
- name: User-Provided Data variable maps to Advanced Matching keys
  code: |-
    const fbqCalls = [];
    const fbqRecorder = function() {
      const call = [];
      for (let i = 0; i < arguments.length; i++) {
        call.push(arguments[i]);
      }
      fbqCalls.push(call);
    };
    mock('copyFromWindow', key => {
      if (key === 'fbq') return fbqRecorder;
    });

    const mockData = {
      pixelId: '111',
      eventType: 'Purchase',
      enableAdvancedMatching: true,
      advancedMatchingSource: 'variable',
      userDataVariable: {
        email: 'jane@example.com',
        phone_number: '+3212345678',
        address: {
          first_name: 'Jane',
          last_name: 'Doe',
          city: 'Ghent',
          region: 'OV',
          postal_code: '9000',
          country: 'BE'
        }
      }
    };

    runCode(mockData);

    const initCalls = fbqCalls.filter(c => c[0] === 'init');
    assertThat(initCalls.length).isEqualTo(1);
    const match = initCalls[0][2];
    assertThat(match.em).isEqualTo('jane@example.com');
    assertThat(match.ph).isEqualTo('+3212345678');
    assertThat(match.fn).isEqualTo('Jane');
    assertThat(match.ln).isEqualTo('Doe');
    assertThat(match.ct).isEqualTo('Ghent');
    assertThat(match.st).isEqualTo('OV');
    assertThat(match.zp).isEqualTo('9000');
    assertThat(match.country).isEqualTo('BE');
    assertApi('gtmOnSuccess').wasCalled();
- name: Event parameters merge with table overriding variable
  code: |-
    const fbqCalls = [];
    const fbqRecorder = function() {
      const call = [];
      for (let i = 0; i < arguments.length; i++) {
        call.push(arguments[i]);
      }
      fbqCalls.push(call);
    };
    mock('copyFromWindow', key => {
      if (key === 'fbq') return fbqRecorder;
    });

    const mockData = {
      pixelId: '111',
      eventType: 'Purchase',
      eventParamsVariable: { currency: 'EUR', value: 10 },
      eventParams: [
        { key: 'value', value: 25 }
      ],
      testEventCode: 'TEST123',
      eventId: 'evt-1'
    };

    runCode(mockData);

    const trackCalls = fbqCalls.filter(c => c[0] === 'trackSingle');
    assertThat(trackCalls.length).isEqualTo(1);
    const params = trackCalls[0][3];
    assertThat(params.currency).isEqualTo('EUR');
    assertThat(params.value).isEqualTo(25);
    assertThat(params.test_event_code).isEqualTo('TEST123');
    const options = trackCalls[0][4];
    assertThat(options.eventID).isEqualTo('evt-1');
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 11/11/2025, 00:56:03
