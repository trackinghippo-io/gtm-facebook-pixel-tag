# Facebook Pixel Tag (GTM Template)

A Google Tag Manager (GTM) tag template for sending events to Facebook Pixel with Consent Mode gating, Advanced Matching (manual fields or Google's User-Provided Data variable), multi-pixel support, Limited Data Use and Conversions API deduplication.

## Overview

This template loads the Facebook Pixel library once, initializes one or more Pixel IDs, and sends standard or custom events using `fbq('trackSingle', ...)` so events never leak to other pixels on the page.

## Features

- **Standard + custom events**: Choose from all standard Facebook Pixel events, provide a custom event name, or resolve the event name from a variable. Standard names are sent with `trackSingle`, all others with `trackSingleCustom`.
- **Multiple pixels**: Provide a comma-separated list of Pixel IDs; each is initialized once and events are sent per pixel with `trackSingle` (no cross-pixel leakage).
- **Event parameters**: Pass optional parameters via a key/value table, an object variable, or both (table values win).
- **Test Events**: Optional `test_event_code` field for Facebook Test Events.
- **Deduplication**: Optional `event_id` field for Conversions API deduplication (sent as `eventID` options).
- **Consent Mode**: Optional `ad_storage` gate before sending events.
- **Advanced Matching**: Manual user data fields, or map Google Tag Manager's built-in **User-Provided Data** variable (also accepts GA4-style `user_data` objects and objects already using Meta's `em`/`ph`/... keys).
- **Limited Data Use (LDU)**: Optional `fbq('dataProcessingOptions', ['LDU'], country, state)` call for US privacy compliance.
- **Configuration toggles**: Disable automatic configuration (`autoConfig`) and pushState/replaceState history tracking for SPAs.
- **Optimized loading**: Pixel script is injected once and `init` is called once per Pixel ID.

## Installation

### Manual Installation

1. Download the `template.tpl` file from this repository.
2. In your GTM workspace, go to **Templates**.
3. Click **New** in the **Tag Templates** section.
4. Click the three-dot menu in the top right and select **Import**.
5. Select the downloaded `template.tpl` file.
6. Save the template.

## Usage

### Creating the Tag

1. In GTM, go to **Tags** and click **New**.
2. Click **Tag Configuration**.
3. Select **Facebook Pixel Tag by TrackingHippo.io**.
4. Configure the tag:
   - **Pixel ID(s)**: Your Facebook Pixel ID, or a comma-separated list of IDs.
   - **Event**: Choose a standard event, **Custom Event**, or **Event Name from Variable**.
   - **Custom event name**: Required when using **Custom Event**.
   - **Event name variable**: Required when using **Event Name from Variable**.
   - **Event parameters variable**: Optional object variable with event parameters.
   - **Event parameters**: Optional key/value parameters (override the variable).
   - **Test event code**: Optional `test_event_code` for Facebook Test Events.
   - **Event ID**: Optional `event_id` for Conversions API deduplication.
   - **Require ad_storage consent**: Optional gate using Consent Mode (sets Pixel consent to grant/revoke).
   - **Limited Data Use**: Optional `dataProcessingOptions` with country/state.
   - **Disable automatic configuration / pushState tracking**: Optional pixel behavior toggles.
   - **Advanced Matching**: Manual user data fields or a User-Provided Data variable.
5. Set a trigger and save the tag.

### Example Event Parameters

- Purchase: `value`, `currency`
- AddToCart: `content_ids`, `content_type`, `value`, `currency`
- ViewContent: `content_ids`, `content_type`

## Advanced Matching

Enable **Advanced Matching** and pick a source:

### Manual fields

- `em` (email)
- `ph` (phone)
- `fn` (first name)
- `ln` (last name)
- `ct` (city)
- `st` (state)
- `zp` (ZIP/postal code)
- `country`
- `external_id`
- `db` (date of birth, YYYYMMDD)
- `ge` (gender, f or m)

### User-Provided Data variable

Select a variable that returns user data. Supported shapes:

- GTM's built-in **User-Provided Data** variable: `email`, `phone_number`, `address.{first_name, last_name, city, region, postal_code, country}`
- GA4-style `user_data`: `email_address`, `phone_number`, `address.{...}`
- Objects already using Meta's Advanced Matching keys (`em`, `ph`, `fn`, `ln`, `ct`, `st`, `zp`, `country`, `external_id`, `db`, `ge`)

Only send fields you have consent to use. Facebook hashes these fields client-side before they are sent.

## Limited Data Use (LDU)

When enabled, the template calls `fbq('dataProcessingOptions', ['LDU'], country, state)` before initializing the pixel. Use `0` / `0` to let Facebook geolocate, or `1` / `1000` to always apply California rules.

## Permissions

This template requires access to the following global objects:

- `fbq`, `_fbq` (read/write)
- `fbq.disablePushState` (read/write)
- `__th_fbq_inited_ids` (read/write)
- `__th_fbq_script_loaded` (read/write)

## License

Apache 2.0

## Support

For issues or questions, please open an issue on the TrackingHippo repository.
