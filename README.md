YouTube Video Info
===================

This is a simple gem to get info and download links for a YouTube Video.  It doesn't deal with the different video formats and itags and leaves that logic to the developer; this makes the gem more resiliant to format changes.

## Example

This is the simplest way to get ahold of links for a video:

```ruby
response = YoutubeVideoInfo.download(<video link>)
response.links
```

You can also get a list of links grouped by format code with the ```#links_by_itag``` method.

A response typically comes with the following information:

  - account_playback_token
  - ad3_module
  - ad_device
  - ad_flags
  - ad_logging_flag
  - ad_preroll
  - ad_slots
  - ad_tag
  - adaptive_fmts
  - adsense_video_doc_id
  - aftv
  - afv
  - afv_ad_tag
  - afv_ad_tag_restricted_to_instream
  - afv_instream_max
  - afv_invideo_ad_tag
  - allow_embed
  - allow_html5_ads
  - allow_ratings
  - apply_fade_on_midrolls
  - as_launched_in_country
  - atc
  - author
  - avg_rating
  - c
  - cafe_experiment_id
  - caption_audio_tracks
  - caption_tracks
  - caption_translation_languages
  - cc3_module
  - cc_asr
  - cc_font
  - cc_fonts_url
  - cc_load_policy
  - cc_module
  - cid
  - cl
  - core_dbp
  - cr
  - csi_page_type
  - dashmpd
  - dbp
  - dclk
  - default_audio_track_index
  - dynamic_allocation_ad_tag
  - enablecsi
  - eventid
  - excluded_ads
  - fade_in_duration_milliseconds
  - fade_in_start_milliseconds
  - fade_out_duration_milliseconds
  - fade_out_start_milliseconds
  - fexp
  - fmt_list
  - gut_tag
  - hl
  - host_language
  - idpj
  - instream_long
  - invideo
  - is_listed
  - iurl
  - iurlhq
  - iurlmaxres
  - iurlmq
  - iurlsd
  - iv3_module
  - iv_invideo_url
  - iv_load_policy
  - iv_module
  - keywords
  - ldpj
  - legacy_behavior
  - length_seconds
  - loeid
  - loudness
  - max_dynamic_allocation_ad_tag_length
  - midroll_freqcap
  - midroll_prefetch_size
  - mpu
  - mpvid
  - of
  - oid
  - plid
  - pltype
  - probe_url
  - ptchn
  - ptk
  - pyv_ad_channel
  - pyv_in_related_cafe_experiment_id
  - rvs
  - sffb
  - show_content_thumbnail
  - show_pyv_in_related
  - status
  - storyboard_spec
  - t
  - tag_for_child_directed
  - thumbnail_url
  - timestamp
  - title
  - token
  - trueview
  - ttsurl
  - ucid
  - url_encoded_fmt_stream_map
  - video_id
  - videostats_playback_base_url
  - view_count
  - watermark
