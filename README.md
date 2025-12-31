# Facebook Pixel Tag (GTM Template)

A Google Tag Manager (GTM) tag template for sending events to Facebook Pixel with optional Advanced Matching.

## Overview

This template loads the Facebook Pixel library once, initializes a single Pixel ID, and sends standard or custom events using `fbq`.

## Features

- **Standard + custom events**: Choose from all standard Facebook Pixel events or provide a custom event name.
- **Event parameters**: Pass optional event parameters (e.g., value, currency, content_ids).
- **Test Events**: Optional `test_event_code` field for Facebook Test Events.
- **Deduplication**: Optional `event_id` field for Conversions API deduplication (sent as `eventID` options).
- **Consent Mode**: Optional `ad_storage` gate before sending events.
- **Advanced Matching**: Optional user data fields to improve attribution.
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
   - **Pixel ID**: Your Facebook Pixel ID.
   - **Event**: Choose a standard event or select **Custom Event**.
   - **Custom event name**: Required when using **Custom Event**.
   - **Event parameters**: Optional key/value parameters.
   - **Test event code**: Optional `test_event_code` for Facebook Test Events.
   - **Event ID**: Optional `event_id` for Conversions API deduplication.
   - **Require ad_storage consent**: Optional gate using Consent Mode (sets Pixel consent to grant/revoke).
   - **Advanced Matching**: Optional user data fields.
5. Set a trigger and save the tag.

### Example Event Parameters

- Purchase: `value`, `currency`
- AddToCart: `content_ids`, `content_type`, `value`, `currency`
- ViewContent: `content_ids`, `content_type`

## Advanced Matching Fields

If enabled, the template sends the following fields (when provided):

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

Only send fields you have consent to use. Facebook will hash these fields automatically if needed.

## Permissions

This template requires access to the following global objects:

- `fbq` (read/write)
- `_fbq` (read/write)
- `__th_fbq_inited_ids` (read/write)
- `__th_fbq_script_loaded` (read/write)

## License

Apache 2.0

## Support

For issues or questions, please open an issue on the TrackingHippo repository.
