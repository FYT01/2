.class public final Lcom/android/bluetooth/avrcp/Avrcp;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;,
        Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;,
        Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;,
        Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;,
        Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;,
        Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;,
        Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;,
        Lcom/android/bluetooth/avrcp/Avrcp$Metadata;,
        Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;,
        Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;,
        Lcom/android/bluetooth/avrcp/Avrcp$1;
    }
.end annotation


# static fields
.field private static final ALBUMS_ITEM_INDEX:I = 0x0

.field private static final ARTISTS_ITEM_INDEX:I = 0x1

.field public static final ATTRIBUTE_EQUALIZER:I = 0x1

.field public static final ATTRIBUTE_NOTSUPPORTED:I = -0x1

.field public static final ATTRIBUTE_REPEATMODE:I = 0x2

.field public static final ATTRIBUTE_SCANMODE:I = 0x4

.field public static final ATTRIBUTE_SHUFFLEMODE:I = 0x3

.field private static final AVRCP_BASE_VOLUME_STEP:I = 0x1

.field private static final AVRCP_BR_RSP_TIMEOUT:I = 0x7d0

.field private static final AVRCP_CONNECTED:I = 0x1

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field private static final BASE_SKIP_AMOUNT:I = 0x7d0

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_AVRC_UI_UPDATE:I = 0x8

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field private static final BUTTON_TIMEOUT_TIME:I = 0x7d0

.field static final CHARSET_ID_FIELD_LENGTH:S = 0x2s

.field static final CHAR_SET_UTF8:S = 0x6as

.field private static final CMDGET:Ljava/lang/String; = "get"

.field private static final CMDSET:Ljava/lang/String; = "set"

.field private static final CMD_TIMEOUT_DELAY:I = 0x7d0

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final DEBUG:Z = false

.field static final DISPLAYABLE_NAME_LENGTH_FIELD_LENGTH:S = 0x2s

.field private static final DOES_NOT_EXIST:I = 0x9

.field static final EVT_ADDRESSED_PLAYER_CHANGED:I = 0xb

.field static final EVT_APP_SETTINGS_CHANGED:I = 0x8

.field static final EVT_AVAILABLE_PLAYERS_CHANGED:I = 0xa

.field static final EVT_BATT_STATUS_CHANGED:I = 0x6

.field static final EVT_NOW_PLAYING_CONTENT_CHANGED:I = 0x9

.field static final EVT_PLAY_POS_CHANGED:I = 0x5

.field static final EVT_PLAY_STATUS_CHANGED:I = 0x1

.field static final EVT_SYSTEM_STATUS_CHANGED:I = 0x7

.field static final EVT_TRACK_CHANGED:I = 0x2

.field static final EVT_TRACK_REACHED_END:I = 0x3

.field static final EVT_TRACK_REACHED_START:I = 0x4

.field private static final EXTRA_ATTIBUTE_ID_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTRIBUTE_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTRIBUTE_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTRIB_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field static final FEATURE_BITMASK_FIELD_LENGTH:S = 0x10s

.field static final FEATURE_MASK_0_BIT_NO:I = 0xe

.field static final FEATURE_MASK_0_MASK:I = 0x40

.field static final FEATURE_MASK_0_OFFSET:I = 0x1

.field static final FEATURE_MASK_1_BIT_NO:I = 0xf

.field static final FEATURE_MASK_1_MASK:I = 0x80

.field static final FEATURE_MASK_1_OFFSET:I = 0x1

.field static final FEATURE_MASK_2_BIT_NO:I = 0x10

.field static final FEATURE_MASK_2_MASK:I = 0x1

.field static final FEATURE_MASK_2_OFFSET:I = 0x2

.field static final FEATURE_MASK_3_BIT_NO:I = 0x11

.field static final FEATURE_MASK_3_MASK:I = 0x2

.field static final FEATURE_MASK_3_OFFSET:I = 0x2

.field static final FEATURE_MASK_4_BIT_NO:I = 0x12

.field static final FEATURE_MASK_4_MASK:I = 0x4

.field static final FEATURE_MASK_4_OFFSET:I = 0x2

.field static final FEATURE_MASK_5_BIT_NO:I = 0x13

.field static final FEATURE_MASK_5_MASK:I = 0x8

.field static final FEATURE_MASK_5_OFFSET:I = 0x2

.field static final FEATURE_MASK_6_BIT_NO:I = 0x14

.field static final FEATURE_MASK_6_MASK:I = 0x10

.field static final FEATURE_MASK_6_OFFSET:I = 0x2

.field static final FEATURE_MASK_7_BIT_NO:I = 0x15

.field static final FEATURE_MASK_7_MASK:I = 0x20

.field static final FEATURE_MASK_7_OFFSET:I = 0x2

.field static final FEATURE_MASK_8_BIT_NO:I = 0x16

.field static final FEATURE_MASK_8_MASK:I = 0x40

.field static final FEATURE_MASK_8_OFFSET:I = 0x2

.field static final FEATURE_MASK_9_BIT_NO:I = 0x17

.field static final FEATURE_MASK_9_MASK:I = 0x80

.field static final FEATURE_MASK_9_OFFSET:I = 0x2

.field static final FEATURE_MASK_ADD2NOWPLAY_BIT_NO:I = 0x3d

.field static final FEATURE_MASK_ADD2NOWPLAY_MASK:I = 0x20

.field static final FEATURE_MASK_ADD2NOWPLAY_OFFSET:I = 0x7

.field static final FEATURE_MASK_ADV_CTRL_BIT_NO:I = 0x3a

.field static final FEATURE_MASK_ADV_CTRL_MASK:I = 0x4

.field static final FEATURE_MASK_ADV_CTRL_OFFSET:I = 0x7

.field static final FEATURE_MASK_ANGLE_BIT_NO:I = 0x31

.field static final FEATURE_MASK_ANGLE_MASK:I = 0x2

.field static final FEATURE_MASK_ANGLE_OFFSET:I = 0x6

.field static final FEATURE_MASK_BACKWARD_BIT_NO:I = 0x30

.field static final FEATURE_MASK_BACKWARD_MASK:I = 0x1

.field static final FEATURE_MASK_BACKWARD_OFFSET:I = 0x6

.field static final FEATURE_MASK_BROWSE_BIT_NO:I = 0x3b

.field static final FEATURE_MASK_BROWSE_MASK:I = 0x8

.field static final FEATURE_MASK_BROWSE_OFFSET:I = 0x7

.field static final FEATURE_MASK_BR_WH_ADDR_BIT_NO:I = 0x3f

.field static final FEATURE_MASK_BR_WH_ADDR_MASK:I = 0x80

.field static final FEATURE_MASK_BR_WH_ADDR_OFFSET:I = 0x7

.field static final FEATURE_MASK_CHNL_DOWN_BIT_NO:I = 0x1c

.field static final FEATURE_MASK_CHNL_DOWN_MASK:I = 0x10

.field static final FEATURE_MASK_CHNL_DOWN_OFFSET:I = 0x3

.field static final FEATURE_MASK_CHNL_UP_BIT_NO:I = 0x1b

.field static final FEATURE_MASK_CHNL_UP_MASK:I = 0x8

.field static final FEATURE_MASK_CHNL_UP_OFFSET:I = 0x3

.field static final FEATURE_MASK_CLEAR_BIT_NO:I = 0x1a

.field static final FEATURE_MASK_CLEAR_MASK:I = 0x4

.field static final FEATURE_MASK_CLEAR_OFFSET:I = 0x3

.field static final FEATURE_MASK_CONTENTS_MENU_BIT_NO:I = 0xb

.field static final FEATURE_MASK_CONTENTS_MENU_MASK:I = 0x8

.field static final FEATURE_MASK_CONTENTS_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_BIT_NO:I = 0x20

.field static final FEATURE_MASK_DISP_INFO_MASK:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_OFFSET:I = 0x4

.field static final FEATURE_MASK_DOT_BIT_NO:I = 0x18

.field static final FEATURE_MASK_DOT_MASK:I = 0x1

.field static final FEATURE_MASK_DOT_OFFSET:I = 0x3

.field static final FEATURE_MASK_DOWN_BIT_NO:I = 0x2

.field static final FEATURE_MASK_DOWN_MASK:I = 0x4

.field static final FEATURE_MASK_DOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_EJECT_BIT_NO:I = 0x2e

.field static final FEATURE_MASK_EJECT_MASK:I = 0x40

.field static final FEATURE_MASK_EJECT_OFFSET:I = 0x5

.field static final FEATURE_MASK_ENTER_BIT_NO:I = 0x19

.field static final FEATURE_MASK_ENTER_MASK:I = 0x2

.field static final FEATURE_MASK_ENTER_OFFSET:I = 0x3

.field static final FEATURE_MASK_EXIT_BIT_NO:I = 0xd

.field static final FEATURE_MASK_EXIT_MASK:I = 0x20

.field static final FEATURE_MASK_EXIT_OFFSET:I = 0x1

.field static final FEATURE_MASK_F1_BIT_NO:I = 0x33

.field static final FEATURE_MASK_F1_MASK:I = 0x8

.field static final FEATURE_MASK_F1_OFFSET:I = 0x6

.field static final FEATURE_MASK_F2_BIT_NO:I = 0x34

.field static final FEATURE_MASK_F2_MASK:I = 0x10

.field static final FEATURE_MASK_F2_OFFSET:I = 0x6

.field static final FEATURE_MASK_F3_BIT_NO:I = 0x35

.field static final FEATURE_MASK_F3_MASK:I = 0x20

.field static final FEATURE_MASK_F3_OFFSET:I = 0x6

.field static final FEATURE_MASK_F4_BIT_NO:I = 0x36

.field static final FEATURE_MASK_F4_MASK:I = 0x40

.field static final FEATURE_MASK_F4_OFFSET:I = 0x6

.field static final FEATURE_MASK_F5_BIT_NO:I = 0x37

.field static final FEATURE_MASK_F5_MASK:I = 0x80

.field static final FEATURE_MASK_F5_OFFSET:I = 0x6

.field static final FEATURE_MASK_FAST_FWD_BIT_NO:I = 0x2d

.field static final FEATURE_MASK_FAST_FWD_MASK:I = 0x20

.field static final FEATURE_MASK_FAST_FWD_OFFSET:I = 0x5

.field static final FEATURE_MASK_FAVORITE_MENU_BIT_NO:I = 0xc

.field static final FEATURE_MASK_FAVORITE_MENU_MASK:I = 0x10

.field static final FEATURE_MASK_FAVORITE_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_FORWARD_BIT_NO:I = 0x2f

.field static final FEATURE_MASK_FORWARD_MASK:I = 0x80

.field static final FEATURE_MASK_FORWARD_OFFSET:I = 0x5

.field static final FEATURE_MASK_GROUP_NAVI_BIT_NO:I = 0x39

.field static final FEATURE_MASK_GROUP_NAVI_MASK:I = 0x2

.field static final FEATURE_MASK_GROUP_NAVI_OFFSET:I = 0x7

.field static final FEATURE_MASK_HELP_BIT_NO:I = 0x21

.field static final FEATURE_MASK_HELP_MASK:I = 0x2

.field static final FEATURE_MASK_HELP_OFFSET:I = 0x4

.field static final FEATURE_MASK_INPUT_SEL_BIT_NO:I = 0x1f

.field static final FEATURE_MASK_INPUT_SEL_MASK:I = 0x80

.field static final FEATURE_MASK_INPUT_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_LEFTDOWN_BIT_NO:I = 0x8

.field static final FEATURE_MASK_LEFTDOWN_MASK:I = 0x1

.field static final FEATURE_MASK_LEFTDOWN_OFFSET:I = 0x1

.field static final FEATURE_MASK_LEFTUP_BIT_NO:I = 0x7

.field static final FEATURE_MASK_LEFTUP_MASK:I = 0x80

.field static final FEATURE_MASK_LEFTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_LEFT_BIT_NO:I = 0x3

.field static final FEATURE_MASK_LEFT_MASK:I = 0x8

.field static final FEATURE_MASK_LEFT_OFFSET:I = 0x0

.field static final FEATURE_MASK_MUTE_BIT_NO:I = 0x27

.field static final FEATURE_MASK_MUTE_MASK:I = 0x80

.field static final FEATURE_MASK_MUTE_OFFSET:I = 0x4

.field static final FEATURE_MASK_NOW_PLAY_BIT_NO:I = 0x41

.field static final FEATURE_MASK_NOW_PLAY_MASK:I = 0x2

.field static final FEATURE_MASK_NOW_PLAY_OFFSET:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_BIT_NO:I = 0x23

.field static final FEATURE_MASK_PAGE_DOWN_MASK:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_BIT_NO:I = 0x22

.field static final FEATURE_MASK_PAGE_UP_MASK:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAUSE_BIT_NO:I = 0x2a

.field static final FEATURE_MASK_PAUSE_MASK:I = 0x4

.field static final FEATURE_MASK_PAUSE_OFFSET:I = 0x5

.field static final FEATURE_MASK_PLAY_BIT_NO:I = 0x28

.field static final FEATURE_MASK_PLAY_MASK:I = 0x1

.field static final FEATURE_MASK_PLAY_OFFSET:I = 0x5

.field static final FEATURE_MASK_POWER_BIT_NO:I = 0x24

.field static final FEATURE_MASK_POWER_MASK:I = 0x10

.field static final FEATURE_MASK_POWER_OFFSET:I = 0x4

.field static final FEATURE_MASK_PREV_CHNL_BIT_NO:I = 0x1d

.field static final FEATURE_MASK_PREV_CHNL_MASK:I = 0x20

.field static final FEATURE_MASK_PREV_CHNL_OFFSET:I = 0x3

.field static final FEATURE_MASK_RECORD_BIT_NO:I = 0x2b

.field static final FEATURE_MASK_RECORD_MASK:I = 0x8

.field static final FEATURE_MASK_RECORD_OFFSET:I = 0x5

.field static final FEATURE_MASK_REWIND_BIT_NO:I = 0x2c

.field static final FEATURE_MASK_REWIND_MASK:I = 0x10

.field static final FEATURE_MASK_REWIND_OFFSET:I = 0x5

.field static final FEATURE_MASK_RIGHTDOWN_BIT_NO:I = 0x6

.field static final FEATURE_MASK_RIGHTDOWN_MASK:I = 0x40

.field static final FEATURE_MASK_RIGHTDOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHTUP_BIT_NO:I = 0x5

.field static final FEATURE_MASK_RIGHTUP_MASK:I = 0x20

.field static final FEATURE_MASK_RIGHTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHT_BIT_NO:I = 0x4

.field static final FEATURE_MASK_RIGHT_MASK:I = 0x10

.field static final FEATURE_MASK_RIGHT_OFFSET:I = 0x0

.field static final FEATURE_MASK_ROOT_MENU_BIT_NO:I = 0x9

.field static final FEATURE_MASK_ROOT_MENU_MASK:I = 0x2

.field static final FEATURE_MASK_ROOT_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SEARCH_BIT_NO:I = 0x3c

.field static final FEATURE_MASK_SEARCH_MASK:I = 0x10

.field static final FEATURE_MASK_SEARCH_OFFSET:I = 0x7

.field static final FEATURE_MASK_SEARCH_WH_ADDR_BIT_NO:I = 0x40

.field static final FEATURE_MASK_SEARCH_WH_ADDR_MASK:I = 0x1

.field static final FEATURE_MASK_SEARCH_WH_ADDR_OFFSET:I = 0x8

.field static final FEATURE_MASK_SELECT_BIT_NO:I = 0x0

.field static final FEATURE_MASK_SELECT_MASK:I = 0x1

.field static final FEATURE_MASK_SELECT_OFFSET:I = 0x0

.field static final FEATURE_MASK_SETUP_MENU_BIT_NO:I = 0xa

.field static final FEATURE_MASK_SETUP_MENU_MASK:I = 0x4

.field static final FEATURE_MASK_SETUP_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SOUND_SEL_BIT_NO:I = 0x1e

.field static final FEATURE_MASK_SOUND_SEL_MASK:I = 0x40

.field static final FEATURE_MASK_SOUND_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_STOP_BIT_NO:I = 0x29

.field static final FEATURE_MASK_STOP_MASK:I = 0x2

.field static final FEATURE_MASK_STOP_OFFSET:I = 0x5

.field static final FEATURE_MASK_SUBPICTURE_BIT_NO:I = 0x32

.field static final FEATURE_MASK_SUBPICTURE_MASK:I = 0x4

.field static final FEATURE_MASK_SUBPICTURE_OFFSET:I = 0x6

.field static final FEATURE_MASK_UID_PERSIST_BIT_NO:I = 0x42

.field static final FEATURE_MASK_UID_PERSIST_MASK:I = 0x4

.field static final FEATURE_MASK_UID_PERSIST_OFFSET:I = 0x8

.field static final FEATURE_MASK_UID_UNIQUE_BIT_NO:I = 0x3e

.field static final FEATURE_MASK_UID_UNIQUE_MASK:I = 0x40

.field static final FEATURE_MASK_UID_UNIQUE_OFFSET:I = 0x7

.field static final FEATURE_MASK_UP_BIT_NO:I = 0x1

.field static final FEATURE_MASK_UP_MASK:I = 0x2

.field static final FEATURE_MASK_UP_OFFSET:I = 0x0

.field static final FEATURE_MASK_VENDOR_BIT_NO:I = 0x38

.field static final FEATURE_MASK_VENDOR_MASK:I = 0x1

.field static final FEATURE_MASK_VENDOR_OFFSET:I = 0x7

.field static final FEATURE_MASK_VOL_DOWN_BIT_NO:I = 0x26

.field static final FEATURE_MASK_VOL_DOWN_MASK:I = 0x40

.field static final FEATURE_MASK_VOL_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_VOL_UP_BIT_NO:I = 0x25

.field static final FEATURE_MASK_VOL_UP_MASK:I = 0x20

.field static final FEATURE_MASK_VOL_UP_OFFSET:I = 0x4

.field private static final FOLDER_DOWN:I = 0x1

.field static final FOLDER_ITEM_COUNT_NONE:I = 0xff

.field private static final FOLDER_TYPE_ALBUMS:I = 0x2

.field private static final FOLDER_TYPE_ARTISTS:I = 0x3

.field private static final FOLDER_TYPE_GENRES:I = 0x4

.field private static final FOLDER_TYPE_MIXED:I = 0x0

.field private static final FOLDER_TYPE_PLAYLISTS:I = 0x5

.field private static final FOLDER_TYPE_TITLES:I = 0x1

.field private static final FOLDER_UP:I = 0x0

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_INVALID:I = 0xff

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field private static final INTERNAL_ERROR:I = 0x3

.field private static final INVALID_ADDRESSED_PLAYER_ID:I = -0x1

.field private static final INVALID_DEVICE_INDEX:I = 0xff

.field private static final INVALID_DIRECTION:I = 0x7

.field private static final INVALID_PLAYER_ID:I = 0x11

.field private static final INVALID_SCOPE:I = 0xa

.field static final ITEM_LENGTH_LENGTH:S = 0x2s

.field static final ITEM_PLAYER:B = 0x1t

.field static final ITEM_TYPE_LENGTH:S = 0x1s

.field private static final KEY_STATE_PRESS:I = 0x1

.field public static final KEY_STATE_PRESSED:I = 0x0

.field private static final KEY_STATE_RELEASE:I = 0x0

.field public static final KEY_STATE_RELEASED:I = 0x1

.field static final MAJOR_PLAYER_TYPE_FIELD_LENGTH:S = 0x1s

.field static final MAJOR_TYPE_AUDIO:B = 0x1t

.field static final MAJOR_TYPE_BC_AUDIO:B = 0x4t

.field static final MAJOR_TYPE_BC_VIDEO:B = 0x8t

.field static final MAJOR_TYPE_INVALID:S = 0xf0s

.field static final MAJOR_TYPE_VIDEO:B = 0x2t

.field private static final MAX_ATTRIB_COUNT:I = 0x7

.field private static final MAX_BROWSE_ITEM_TO_SEND:I = 0x3

.field private static final MAX_ERROR_RETRY_TIMES:I = 0x3

.field private static final MAX_MULTIPLIER_VALUE:J = 0x80L

.field static final MEDIA_ATTR_ALBUM:I = 0x3

.field static final MEDIA_ATTR_ARTIST:I = 0x2

.field static final MEDIA_ATTR_GENRE:I = 0x6

.field static final MEDIA_ATTR_MAX:I = 0x7

.field static final MEDIA_ATTR_MIN:I = 0x1

.field static final MEDIA_ATTR_NUM_TRACKS:I = 0x5

.field static final MEDIA_ATTR_PLAYING_TIME:I = 0x7

.field static final MEDIA_ATTR_TITLE:I = 0x1

.field static final MEDIA_ATTR_TRACK_NUM:I = 0x4

.field private static final MEDIA_IN_USE:I = 0xd

.field private static final MEDIA_TYPE_AUDIO:I = 0x0

.field private static final MEDIA_TYPE_VIDEO:I = 0x1

.field private static final MESSAGE_ABS_VOL_TIMEOUT:I = 0x9

.field private static final MESSAGE_ADJUST_VOLUME:I = 0x7

.field private static final MESSAGE_CHANGE_PATH:I = 0x7d5

.field private static final MESSAGE_CHANGE_PLAY_POS:I = 0xc

.field private static final MESSAGE_FAST_FORWARD:I = 0xa

.field private static final MESSAGE_GET_ELEM_ATTRS:I = 0x3

.field private static final MESSAGE_GET_FOLDER_ITEMS:I = 0x7d3

.field private static final MESSAGE_GET_ITEM_ATTRS:I = 0x7d7

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x2

.field private static final MESSAGE_GET_RC_FEATURES:I = 0x1

.field private static final MESSAGE_PLAYERSETTINGS_TIMEOUT:I = 0x25a

.field private static final MESSAGE_PLAY_INTERVAL_TIMEOUT:I = 0x5

.field private static final MESSAGE_PLAY_ITEM:I = 0x7d6

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0x4

.field private static final MESSAGE_REWIND:I = 0xb

.field private static final MESSAGE_SEND_PASS_THROUGH_CMD:I = 0x7d1

.field private static final MESSAGE_SET_A2DP_AUDIO_STATE:I = 0xd

.field private static final MESSAGE_SET_ABSOLUTE_VOLUME:I = 0x8

.field private static final MESSAGE_SET_ADDR_PLAYER:I = 0x7d2

.field private static final MESSAGE_SET_ADDR_PLAYER_REQ_TIMEOUT:I = 0xe

.field private static final MESSAGE_SET_BROWSED_PLAYER:I = 0x7d4

.field private static final MESSAGE_VOLUME_CHANGED:I = 0x6

.field private static final MSG_NOW_PLAYING_ENTRIES_RECEIVED:I = 0xcf

.field private static final MSG_PLAY_ITEM_RESPONSE:I = 0xce

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_ADDRESSED_PLAYER:I = 0xca

.field private static final MSG_UPDATE_AVAILABLE_PLAYERS:I = 0xc9

.field private static final MSG_UPDATE_BROWSED_PLAYER_FOLDER:I = 0xcc

.field private static final MSG_UPDATE_NOW_PLAYING_CONTENT_CHANGED:I = 0xcd

.field private static final MSG_UPDATE_RCC_CHANGE:I = 0xcb

.field private static final MSG_UPDATE_STATE:I = 0x64

.field static final NOTIFICATION_TYPE_CHANGED:I = 0x1

.field static final NOTIFICATION_TYPE_INTERIM:I = 0x0

.field static final NOTIFICATION_TYPE_REJECT:I = 0x2

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field private static final NOT_A_DIRECTORY:I = 0x8

.field private static final NOW_PALYING_CONTENT_CHANGED_NOTIFICATION:I = 0x68

.field public static final NUMPLAYER_ATTRIBUTE:I = 0x2

.field private static final NUM_ROOT_ELEMENTS:I = 0x4

.field private static final OPERATION_SUCCESSFUL:I = 0x4

.field private static final PATH_ALBUMS:Ljava/lang/String; = "albums"

.field private static final PATH_ARTISTS:Ljava/lang/String; = "artists"

.field private static final PATH_INVALID:Ljava/lang/String; = "invalid"

.field private static final PATH_PLAYLISTS:Ljava/lang/String; = "playlists"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final PATH_TITLES:Ljava/lang/String; = "titles"

.field private static final PLAYERSETTINGS_REQUEST:Ljava/lang/String; = "org.codeaurora.music.playersettingsrequest"

.field private static final PLAYERSETTINGS_RESPONSE:Ljava/lang/String; = "org.codeaurora.music.playersettingsresponse"

.field static final PLAYER_ID_FIELD_LENGTH:S = 0x2s

.field private static final PLAYER_NOT_ADDRESSED:I = 0x13

.field private static final PLAYER_NOT_BROWSABLE:I = 0x12

.field static final PLAYER_SUBTYPE_FIELD_LENGTH:S = 0x4s

.field private static final PLAYLISTS_ITEM_INDEX:I = 0x2

.field static final PLAYSTATUS_ERROR:S = 0xffs

.field static final PLAYSTATUS_FWD_SEEK:B = 0x3t

.field static final PLAYSTATUS_PAUSED:B = 0x2t

.field static final PLAYSTATUS_PLAYING:B = 0x1t

.field static final PLAYSTATUS_REV_SEEK:B = 0x4t

.field static final PLAYSTATUS_STOPPED:B = 0x0t

.field private static final PLAY_POSITION_CHANGE_NOTIFICATION:I = 0x65

.field private static final PLAY_STATUS_CHANGE_NOTIFICATION:I = 0x66

.field static final PLAY_STATUS_FIELD_LENGTH:S = 0x1s

.field private static final RANGE_OUT_OF_BOUNDS:I = 0xb

.field static final SCOPE_NOW_PLAYING:I = 0x3

.field static final SCOPE_PLAYER_LIST:I = 0x0

.field static final SCOPE_VIRTUAL_FILE_SYS:I = 0x1

.field private static final SET_ATTRIBUTE_VALUES:I = 0x6

.field private static final SKIP_DOUBLE_INTERVAL:I = 0xbb8

.field private static final SKIP_PERIOD:I = 0x190

.field static final SUB_TYPE_AUDIO_BOOK:I = 0x1

.field static final SUB_TYPE_INVALID:I = 0xfc

.field static final SUB_TYPE_NONE:I = 0x0

.field static final SUB_TYPE_PODCAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Avrcp"

.field private static final TITLES_ITEM_INDEX:I = 0x3

.field private static final TRACK_CHANGE_NOTIFICATION:I = 0x67

.field static final TRACK_ID_SIZE:I = 0x8

.field private static final TYPE_FOLDER_ITEM:I = 0x2

.field private static final TYPE_MEDIA_ELEMENT_ITEM:I = 0x3

.field private static final TYPE_MEDIA_PLAYER_ITEM:I = 0x1

.field private static final UID_ALBUM:J = 0x2L

.field private static final UID_ARTIST:J = 0x3L

.field private static final UID_A_DIRECTORY:I = 0xc

.field private static final UID_PLAYLIST:J = 0x4L

.field private static final UID_TITLES:J = 0x1L

.field public static final VALUE_INVALID:I = 0x0

.field public static final VALUE_REPEATMODE_ALL:I = 0x3

.field public static final VALUE_REPEATMODE_OFF:I = 0x1

.field public static final VALUE_REPEATMODE_SINGLE:I = 0x2

.field public static final VALUE_SHUFFLEMODE_ALL:I = 0x2

.field public static final VALUE_SHUFFLEMODE_OFF:I = 0x1

.field private static currentTrackPos:J

.field private static mMediaUriStatic:Landroid/net/Uri;

.field private static updatePlayTime:Z

.field private static updateValues:Z


# instance fields
.field private final UPDATE_ATTRIBUTES:Ljava/lang/String;

.field private final UPDATE_ATTRIB_TEXT:Ljava/lang/String;

.field private final UPDATE_ATTRIB_VALUE:Ljava/lang/String;

.field private final UPDATE_VALUES:Ljava/lang/String;

.field private final UPDATE_VALUE_TEXT:Ljava/lang/String;

.field private def_attrib:[B

.field deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

.field private mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddressedPlayerId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioStreamMax:I

.field private mAvrcpRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;

.field mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayerState:I

.field private mCurrentPosMs:J

.field private mCursorCols:[Ljava/lang/String;

.field private mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

.field private mPendingCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSetAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPosChangedNT:I

.field private mPlayStartTimeMs:J

.field private mPlayStatusChangedNT:I

.field private mPlaybackIntervalMs:J

.field private mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

.field private mSkipAmount:I

.field private mSkipStartTime:J

.field private mSongLengthMs:J

.field private mTrackChangedNT:I

.field private mTrackNumber:J

.field private mTransportControlFlags:I

.field private final mVolumeStep:I

.field private maxAvrcpConnections:I

.field private mediaPlayerInfo1:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

.field private settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

.field private value_default:[B

.field private value_repmode:[B

.field private value_shufmode:[B


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/Avrcp;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->def_attrib:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/avrcp/Avrcp;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_default:[B

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/avrcp/Avrcp;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_repmode:[B

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/avrcp/Avrcp;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_shufmode:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    sput-object p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaUriStatic:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/Avrcp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z
    .locals 1
    .param p1, "numberattr"    # B
    .param p2, "attr"    # [B
    .param p3, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->SendCurrentPlayerValueRspNative(B[B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z
    .locals 1
    .param p1, "attr_status"    # I
    .param p2, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->SendSetPlayerAppRspNative(I[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/avrcp/Avrcp;B[B)Z
    .locals 1
    .param p1, "statusCode"    # B
    .param p2, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/avrcp/Avrcp;I[B)Z
    .locals 1
    .param p1, "volume"    # I
    .param p2, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getSkipMultiplier()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;
    .locals 1
    .param p1, "attrId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)J
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;)V
    .locals 1
    .param p1, "amount"    # J
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->changePositionBy(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "volume"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/avrcp/Avrcp;[B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->checkPlayerAttributeResponse([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/avrcp/Avrcp;IJLjava/lang/String;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "folderUid"    # J
    .param p4, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->processChangePath(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/avrcp/Avrcp;BJJII[ILjava/lang/String;)V
    .locals 0
    .param p1, "scope"    # B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "size"    # I
    .param p7, "numAttr"    # I
    .param p8, "attrs"    # [I
    .param p9, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->processGetFolderItems(BJJII[ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/avrcp/Avrcp;BJB[ILjava/lang/String;)V
    .locals 0
    .param p1, "scope"    # B
    .param p2, "uid"    # J
    .param p4, "numAttr"    # B
    .param p5, "attrs"    # [I
    .param p6, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/avrcp/Avrcp;->processGetItemAttr(BJB[ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/avrcp/Avrcp;IJLjava/lang/String;)V
    .locals 0
    .param p1, "scope"    # I
    .param p2, "uid"    # J
    .param p4, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->processPlayItem(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;II)V
    .locals 0
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "isFocussed"    # I
    .param p3, "isAvailable"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->processRCCStateChange(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/avrcp/Avrcp;IILjava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "param"    # I
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->processRegisterNotification(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/avrcp/Avrcp;ILjava/lang/String;)V
    .locals 0
    .param p1, "playerId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->processSetAddressedPlayer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/avrcp/Avrcp;ILjava/lang/String;)V
    .locals 0
    .param p1, "playerId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->processSetBrowsedPlayer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->sendAdjustVolume(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "rsptype"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->sendPlayerAppChangedRsp(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/avrcp/Avrcp;B[I[Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "numAttr"    # B
    .param p2, "attrIds"    # [I
    .param p3, "textArray"    # [Ljava/lang/String;
    .param p4, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->sendSetAbsoluteVolume(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/bluetooth/avrcp/Avrcp;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->updateA2dpAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p1, "playerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateAddressedMediaPlayer(I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->updateAvailableMediaPlayers()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/bluetooth/avrcp/Avrcp;[B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateLocalPlayerSettings([B)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/bluetooth/avrcp/Avrcp;IJLandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState(IJLandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z
    .locals 1
    .param p1, "attr"    # B
    .param p2, "attrIds"    # [B
    .param p3, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->getListPlayerappAttrRspNative(B[B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/avrcp/Avrcp;III[B)Z
    .locals 1
    .param p1, "playStatus"    # I
    .param p2, "songLen"    # I
    .param p3, "songPos"    # I
    .param p4, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayStatusRspNative(III[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/avrcp/Avrcp;B[B[B)Z
    .locals 1
    .param p1, "numberattr"    # B
    .param p2, "values"    # [B
    .param p3, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayerAppValueRspNative(B[B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/avrcp/Avrcp;II[B)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "playPos"    # I
    .param p3, "address"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "num_attr"    # I
    .param p2, "attr"    # [B
    .param p3, "length"    # I
    .param p4, "text"    # [Ljava/lang/String;
    .param p5, "address"    # [B

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/avrcp/Avrcp;->sendSettingsTextRspNative(I[BI[Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/avrcp/Avrcp;I[BI[Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "num_attr"    # I
    .param p2, "attr"    # [B
    .param p3, "length"    # I
    .param p4, "text"    # [Ljava/lang/String;
    .param p5, "address"    # [B

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/avrcp/Avrcp;->sendValueTextRspNative(I[BI[Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 384
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->classInitNative()V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpService;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p3, "maxConnections"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    .line 246
    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    .line 247
    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 321
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    .line 328
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    .line 366
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->def_attrib:[B

    .line 367
    new-array v1, v6, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_repmode:[B

    .line 371
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_shufmode:[B

    .line 373
    new-array v1, v4, [B

    aput-byte v5, v1, v5

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->value_default:[B

    .line 374
    const-string/jumbo v1, "UpdateSupportedAttributes"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->UPDATE_ATTRIBUTES:Ljava/lang/String;

    .line 375
    const-string/jumbo v1, "UpdateSupportedValues"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->UPDATE_VALUES:Ljava/lang/String;

    .line 376
    const-string/jumbo v1, "UpdateCurrentValues"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->UPDATE_ATTRIB_VALUE:Ljava/lang/String;

    .line 377
    const-string/jumbo v1, "UpdateAttributesText"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->UPDATE_ATTRIB_TEXT:Ljava/lang/String;

    .line 378
    const-string/jumbo v1, "UpdateValuesText"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->UPDATE_VALUE_TEXT:Ljava/lang/String;

    .line 446
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$1;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2762
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    .line 2763
    const-string/jumbo v2, "audio._id AS _id"

    aput-object v2, v1, v5

    .line 2764
    const-string/jumbo v2, "artist"

    aput-object v2, v1, v4

    .line 2765
    const-string/jumbo v2, "album"

    aput-object v2, v1, v3

    .line 2766
    const-string/jumbo v2, "title"

    aput-object v2, v1, v6

    .line 2767
    const-string/jumbo v2, "duration"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 2768
    const-string/jumbo v2, "_data"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 2769
    const-string/jumbo v2, "mime_type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 2770
    const-string/jumbo v2, "album_id"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 2771
    const-string/jumbo v2, "artist_id"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 2772
    const-string/jumbo v2, "is_podcast"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 2773
    const-string/jumbo v2, "bookmark"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 2762
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    .line 5318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    .line 390
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 391
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    .line 392
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    .line 393
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 394
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 395
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    .line 396
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 397
    iput p3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    .line 398
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    new-array v1, v1, [Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    .line 399
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    .line 400
    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    new-instance v2, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    aput-object v2, v1, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    .line 406
    invoke-direct {p0, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->initNative(I)V

    .line 408
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    .line 409
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    .line 410
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    const/16 v2, 0x7f

    div-int v1, v2, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    .line 387
    return-void

    .line 366
    nop

    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data

    .line 367
    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 371
    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method private native SendCurrentPlayerValueRspNative(B[B[B)Z
.end method

.method private native SendSetPlayerAppRspNative(I[B)Z
.end method

.method private areMultipleDevicesConnected()Z
    .locals 2

    .prologue
    .line 1625
    const/4 v0, 0x0

    .local v0, "deviceIndex":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1627
    const/4 v1, 0x0

    return v1

    .line 1625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1630
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private changePath(BJ[B)V
    .locals 8
    .param p1, "direction"    # B
    .param p2, "uid"    # J
    .param p4, "address"    # [B

    .prologue
    .line 2185
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 2186
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 2185
    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/ArrayList;JLjava/lang/String;)V

    .line 2187
    .local v1, "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x7d5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2188
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2182
    return-void
.end method

.method private native changePathRspNative(IJ[B)Z
.end method

.method private changePositionBy(JLjava/lang/String;)V
    .locals 9
    .param p1, "amount"    # J
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 4034
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    .line 4035
    .local v0, "currentPosMs":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    return-void

    .line 4036
    :cond_0
    add-long v4, v0, p1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 4037
    .local v2, "newPosMs":J
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v4, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    .line 4033
    return-void
.end method

.method private checkPlayerAttributeResponse([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, -0x1

    .line 4339
    const/4 v1, 0x0

    .line 4341
    .local v1, "ret":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 4343
    aget-byte v2, p1, v0

    packed-switch v2, :pswitch_data_0

    .line 4341
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4345
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4346
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Pending SetAttribute contains Equalizer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_1

    .line 4348
    const/4 v1, 0x0

    goto :goto_1

    .line 4350
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 4355
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4356
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Pending SetAttribute contains Repeat"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_2

    .line 4358
    const/4 v1, 0x0

    goto :goto_1

    .line 4360
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 4365
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4366
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Pending SetAttribute contains Shuffle"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_3

    .line 4368
    const/4 v1, 0x0

    goto :goto_1

    .line 4370
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 4376
    :cond_4
    return v1

    .line 4343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private convertPlayStateToPlayStatus(I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 4200
    const/16 v0, 0xff

    .line 4201
    .local v0, "playStatus":I
    packed-switch p1, :pswitch_data_0

    .line 4231
    :goto_0
    return v0

    .line 4204
    :pswitch_0
    const/4 v0, 0x1

    .line 4205
    goto :goto_0

    .line 4209
    :pswitch_1
    const/4 v0, 0x0

    .line 4210
    goto :goto_0

    .line 4213
    :pswitch_2
    const/4 v0, 0x2

    .line 4214
    goto :goto_0

    .line 4218
    :pswitch_3
    const/4 v0, 0x3

    .line 4219
    goto :goto_0

    .line 4223
    :pswitch_4
    const/4 v0, 0x4

    .line 4224
    goto :goto_0

    .line 4227
    :pswitch_5
    const/16 v0, 0xff

    .line 4228
    goto :goto_0

    .line 4201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private convertToAudioStreamVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 4310
    int-to-double v0, p1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private convertToAvrcpVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 4314
    int-to-double v0, p1

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private fastForward(ILjava/lang/String;)V
    .locals 6
    .param p1, "keyState"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2147
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2148
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2149
    .local v1, "deviceIndex":I
    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    .line 2150
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "invalid index for device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    return-void

    .line 2153
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 2154
    if-nez p1, :cond_1

    .line 2155
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Ignore key release event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p1, v5, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2159
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2160
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    goto :goto_0
.end method

.method private getAttributeString(I)Ljava/lang/String;
    .locals 6
    .param p1, "attrId"    # I

    .prologue
    .line 4159
    const/4 v0, 0x0

    .line 4160
    .local v0, "attrStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4191
    .end local v0    # "attrStr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4192
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 4196
    :cond_1
    return-object v0

    .line 4162
    .restart local v0    # "attrStr":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4166
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4170
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4174
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_3
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 4175
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4180
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4184
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_5
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4188
    .local v0, "attrStr":Ljava/lang/String;
    :pswitch_6
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 4160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "attrId"    # I
    .param p3, "deviceIndex"    # I

    .prologue
    .line 4110
    const-string/jumbo v0, "<unknown>"

    .line 4111
    .local v0, "attrStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 4144
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAttributeStringFromCursor: wrong attribute: attrId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :goto_0
    if-nez v0, :cond_0

    .line 4149
    new-instance v0, Ljava/lang/String;

    .end local v0    # "attrStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 4154
    .restart local v0    # "attrStr":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 4114
    :pswitch_0
    const-string/jumbo v1, "title"

    .line 4113
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4118
    :pswitch_1
    const-string/jumbo v1, "artist"

    .line 4117
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4122
    :pswitch_2
    const-string/jumbo v1, "album"

    .line 4121
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4126
    :pswitch_3
    const-string/jumbo v1, "duration"

    .line 4125
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4129
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "playlists"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4131
    const-string/jumbo v1, "_id"

    .line 4130
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4134
    :cond_1
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 4133
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4138
    :pswitch_5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4141
    :pswitch_6
    const-string/jumbo v0, "<unknown>"

    goto :goto_0

    .line 4111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4694
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getElementAttr(B[I[B)V
    .locals 8
    .param p1, "numAttr"    # B
    .param p2, "attrs"    # [I
    .param p3, "address"    # [B

    .prologue
    .line 2070
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    .local v3, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2072
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2074
    :cond_0
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    const-wide/16 v4, 0x0

    .line 2075
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    .line 2074
    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/ArrayList;JLjava/lang/String;)V

    .line 2076
    .local v1, "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2078
    .local v7, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2068
    return-void
.end method

.method private native getElementAttrRspNative(B[I[Ljava/lang/String;[B)Z
.end method

.method private getFolderItems(BJJII[I[B)V
    .locals 16
    .param p1, "scope"    # B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "attrCnt"    # I
    .param p7, "numAttr"    # I
    .param p8, "attrs"    # [I
    .param p9, "address"    # [B

    .prologue
    .line 2924
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p7

    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2929
    :cond_0
    new-instance v3, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;

    .line 2930
    invoke-static/range {p9 .. p9}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 2929
    invoke-direct/range {v3 .. v13}, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;BJJII[ILjava/lang/String;)V

    .line 2931
    .local v3, "folderListEntries":Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v5, 0x7d3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 2932
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4, v14}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2917
    return-void
.end method

.method private native getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
.end method

.method private getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 4616
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4617
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4616
    if-eqz v1, :cond_0

    .line 4618
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device found at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    return v0

    .line 4615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4622
    :cond_1
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "returning invalid index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    const/16 v1, 0xff

    return v1
.end method

.method private getItemAttr(BJB[I[B)V
    .locals 8
    .param p1, "scope"    # B
    .param p2, "uid"    # J
    .param p4, "numAttr"    # B
    .param p5, "attrs"    # [I
    .param p6, "address"    # [B

    .prologue
    .line 2749
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2750
    .local v3, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 2751
    aget v2, p5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2755
    :cond_0
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 2756
    invoke-static {p6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-wide v4, p2

    .line 2755
    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/ArrayList;JLjava/lang/String;)V

    .line 2757
    .local v1, "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v4, 0x7d7

    invoke-virtual {v2, v4, p4, p1, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2759
    .local v7, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2744
    return-void
.end method

.method private native getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z
.end method

.method private native getListPlayerappAttrRspNative(B[B[B)Z
.end method

.method private native getMediaPlayerListRspNative(BII[B[I[B)Z
.end method

.method private getNumItems(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 18
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/String;
    .param p3, "deviceIndex"    # I

    .prologue
    .line 2507
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2508
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 2509
    :cond_1
    const/4 v12, 0x0

    .line 2511
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, p3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2513
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 2514
    const-string/jumbo v5, "is_music=1"

    const/4 v6, 0x0

    move-object/from16 v7, p2

    .line 2511
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2516
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 2517
    :cond_2
    const-wide/16 v2, 0x0

    .line 2543
    if-eqz v12, :cond_3

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2517
    :cond_3
    return-wide v2

    .line 2518
    :cond_4
    :try_start_1
    const-string/jumbo v2, "titles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2519
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    int-to-long v8, v2

    .line 2543
    .local v8, "count":J
    if-eqz v12, :cond_5

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2520
    :cond_5
    return-wide v8

    .line 2521
    .end local v8    # "count":J
    :cond_6
    :try_start_2
    const-string/jumbo v2, "albums"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "artists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2522
    :cond_7
    const-wide/16 v14, 0x0

    .line 2523
    .local v14, "elemCount":J
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2524
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v8, v2

    .line 2525
    .restart local v8    # "count":J
    const-wide/16 v16, 0x0

    .line 2526
    .local v16, "prevElem":J
    const-wide/16 v10, 0x0

    .line 2527
    .local v10, "curElem":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_9

    .line 2528
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2529
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "curElem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "preElem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    cmp-long v2, v10, v16

    if-eqz v2, :cond_8

    .line 2531
    const-wide/16 v2, 0x1

    add-long/2addr v14, v2

    .line 2533
    :cond_8
    move-wide/from16 v16, v10

    .line 2534
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2535
    const-wide/16 v2, 0x1

    sub-long/2addr v8, v2

    goto :goto_0

    .line 2537
    :cond_9
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "element Count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2543
    if-eqz v12, :cond_a

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2538
    :cond_a
    return-wide v14

    .line 2543
    .end local v8    # "count":J
    .end local v10    # "curElem":J
    .end local v14    # "elemCount":J
    .end local v16    # "prevElem":J
    :cond_b
    if-eqz v12, :cond_c

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2547
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_c
    :goto_1
    const-wide/16 v2, 0x0

    return-wide v2

    .line 2540
    :catch_0
    move-exception v13

    .line 2541
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2543
    if-eqz v12, :cond_c

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2542
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 2543
    if-eqz v12, :cond_d

    .line 2544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2542
    :cond_d
    throw v2
.end method

.method private getNumPlaylistItems()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 2479
    const/4 v8, 0x0

    .line 2480
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 2481
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 2482
    const-string/jumbo v0, "name"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 2485
    .local v2, "cols":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2486
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2487
    const-string/jumbo v3, "name != \'\'"

    .line 2488
    const-string/jumbo v5, "name"

    .line 2487
    const/4 v4, 0x0

    .line 2485
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2490
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2500
    :cond_0
    if-eqz v8, :cond_1

    .line 2501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2491
    :cond_1
    return-wide v10

    .line 2493
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v6, v0

    .line 2500
    .local v6, "count":J
    if-eqz v8, :cond_3

    .line 2501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2494
    :cond_3
    return-wide v6

    .line 2496
    .end local v6    # "count":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2497
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2500
    if-eqz v8, :cond_4

    .line 2501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2498
    :cond_4
    return-wide v10

    .line 2499
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2500
    if-eqz v8, :cond_5

    .line 2501
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2499
    :cond_5
    throw v0
.end method

.method private getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-wide v8, -0x7fe688e67fe67d00L

    const/4 v6, 0x3

    .line 4078
    const-wide/16 v2, -0x1

    .line 4079
    .local v2, "songPosition":J
    if-eqz p1, :cond_3

    .line 4080
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 4081
    .local v0, "deviceIndex":I
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 4082
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v4, "Device index is not valid in getPlayPosition"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    return-wide v2

    .line 4085
    :cond_0
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 4086
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 4088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    sub-long/2addr v4, v6

    .line 4089
    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 4088
    add-long v2, v4, v6

    .line 4106
    .end local v0    # "deviceIndex":I
    :cond_1
    :goto_0
    return-wide v2

    .line 4091
    .restart local v0    # "deviceIndex":I
    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    goto :goto_0

    .line 4095
    .end local v0    # "deviceIndex":I
    :cond_3
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 4096
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    if-ne v1, v6, :cond_4

    .line 4097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4098
    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 4097
    sub-long/2addr v4, v6

    .line 4098
    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 4097
    add-long v2, v4, v6

    goto :goto_0

    .line 4100
    :cond_4
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    goto :goto_0
.end method

.method private getPlayStatus([B)V
    .locals 5
    .param p1, "address"    # [B

    .prologue
    const/4 v4, 0x0

    .line 2063
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 2064
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2063
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v4, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2065
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2062
    return-void
.end method

.method private native getPlayStatusRspNative(III[B)Z
.end method

.method private native getPlayerAppValueRspNative(B[B[B)Z
.end method

.method private getRcFeatures([BI)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "features"    # I

    .prologue
    .line 2057
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 2058
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2057
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2059
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2056
    return-void
.end method

.method private getSkipMultiplier()I
    .locals 10

    .prologue
    .line 4041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4042
    .local v0, "currentTime":J
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xbb8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v2, v4

    .line 4043
    .local v2, "multi":J
    const-wide/16 v4, 0x80

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method private getplayerattribute_text(B[B[B)V
    .locals 8
    .param p1, "attr"    # B
    .param p2, "attrIds"    # [B
    .param p3, "address"    # [B

    .prologue
    const/4 v6, 0x2

    .line 4509
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4510
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 4511
    .local v3, "msg":Landroid/os/Message;
    const-string/jumbo v4, "command"

    const-string/jumbo v5, "get"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4512
    const-string/jumbo v4, "commandExtra"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4513
    const-string/jumbo v4, "Attributes"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4514
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    new-array v5, p1, [B

    iput-object v5, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    .line 4515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 4516
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v5, p2, v1

    aput-byte v5, v4, v1

    .line 4515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4517
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4519
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4520
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 4519
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 4521
    .local v0, "deviceIndex":I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .line 4522
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid index for device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    return-void

    .line 4526
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4528
    const/16 v4, 0x25a

    iput v4, v3, Landroid/os/Message;->what:I

    .line 4529
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 4530
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 4531
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4532
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4533
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4505
    return-void
.end method

.method private getplayervalue_text(BB[B[B)V
    .locals 8
    .param p1, "attr_id"    # B
    .param p2, "num_value"    # B
    .param p3, "value"    # [B
    .param p4, "address"    # [B

    .prologue
    const/4 v6, 0x3

    .line 4542
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4543
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 4544
    .local v3, "msg":Landroid/os/Message;
    const-string/jumbo v4, "command"

    const-string/jumbo v5, "get"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4545
    const-string/jumbo v4, "commandExtra"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4546
    const-string/jumbo v4, "Attribute"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 4547
    const-string/jumbo v4, "Values"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4548
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    new-array v5, p2, [B

    iput-object v5, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    .line 4550
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4551
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    .line 4550
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 4552
    .local v0, "deviceIndex":I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_0

    .line 4553
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid index for device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    return-void

    .line 4556
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 4559
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v5, p3, v1

    aput-byte v5, v4, v1

    .line 4558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4560
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4561
    const/16 v4, 0x25a

    iput v4, v3, Landroid/os/Message;->what:I

    .line 4562
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 4563
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 4564
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4565
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4566
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4538
    return-void
.end method

.method private handlePassthroughCmd(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "keyState"    # I
    .param p3, "address"    # [B

    .prologue
    .line 4023
    packed-switch p1, :pswitch_data_0

    .line 4022
    :goto_0
    return-void

    .line 4025
    :pswitch_0
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->rewind(ILjava/lang/String;)V

    goto :goto_0

    .line 4028
    :pswitch_1
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->fastForward(ILjava/lang/String;)V

    goto :goto_0

    .line 4023
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native initNative(I)V
.end method

.method private isCurrentPathValid(I)Z
    .locals 2
    .param p1, "deviceIndex"    # I

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2993
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "titles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2992
    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2992
    if-nez v0, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "artists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2992
    if-nez v0, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playlists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2992
    if-eqz v0, :cond_1

    .line 2997
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2999
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private native isDeviceActiveInHandOffNative([B)Z
.end method

.method private isPlayStateToBeUpdated(I)Z
    .locals 5
    .param p1, "deviceIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1583
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPlayStateTobeUpdated: device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1584
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1586
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxAvrcpConnections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return v3

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1589
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->areMultipleDevicesConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1590
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Single connection exists"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return v3

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isMulticastEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1593
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Multicast is Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return v3

    .line 1596
    :cond_2
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Multiple connection exists, Multicast not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1597
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isDeviceActiveInHandOffNative([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1599
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Device Active in handoff scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return v3

    .line 1602
    :cond_3
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Device Not Active in handoff scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return v4

    .line 1607
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->areMultipleDevicesConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1608
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Single connection exists"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return v3

    .line 1611
    :cond_5
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Multiple connection exists in handoff"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1612
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isDeviceActiveInHandOffNative([B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1614
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Device Active in handoff scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return v3

    .line 1617
    :cond_6
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "Device Not Active in handoff scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return v4
.end method

.method private isPlayingState(I)Z
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 4235
    const/4 v0, 0x0

    .line 4236
    .local v0, "isPlaying":Z
    sparse-switch p1, :sswitch_data_0

    .line 4242
    const/4 v0, 0x0

    .line 4245
    :goto_0
    return v0

    .line 4239
    :sswitch_0
    const/4 v0, 0x1

    .line 4240
    goto :goto_0

    .line 4236
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static make(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpService;I)Lcom/android/bluetooth/avrcp/Avrcp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p2, "maxConnections"    # I

    .prologue
    .line 658
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;-><init>(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpService;I)V

    .line 659
    .local v0, "ar":Lcom/android/bluetooth/avrcp/Avrcp;
    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->start()V

    .line 660
    return-object v0
.end method

.method private notifyVolumeChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4303
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result p1

    .line 4304
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 4305
    const/16 v2, 0x41

    .line 4304
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4302
    return-void
.end method

.method private onConnectionStateChanged(Z[B)V
    .locals 4
    .param p1, "connected"    # Z
    .param p2, "address"    # [B

    .prologue
    .line 4698
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 4699
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 4698
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 4700
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChanged state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    if-eqz p1, :cond_0

    .line 4702
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->setAvrcpConnectedDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 4697
    :goto_0
    return-void

    .line 4704
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->setAvrcpDisconnectedDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private onGetPlayerAttributeValues(B[I[B)V
    .locals 8
    .param p1, "attr"    # B
    .param p2, "arr"    # [I
    .param p3, "address"    # [B

    .prologue
    const/4 v7, 0x4

    .line 4438
    new-array v0, p1, [B

    .line 4439
    .local v0, "barray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 4440
    aget v5, p2, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 4439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4441
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    .line 4442
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 4443
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attrIds:[B

    aget-byte v6, v0, v2

    aput-byte v6, v5, v2

    .line 4442
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4444
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4445
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "command"

    const-string/jumbo v6, "get"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4446
    const-string/jumbo v5, "commandExtra"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4447
    const-string/jumbo v5, "Attributes"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4448
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4450
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4451
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 4450
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 4452
    .local v1, "deviceIndex":I
    const/16 v5, 0xff

    if-ne v1, v5, :cond_2

    .line 4453
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "invalid index for device"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    return-void

    .line 4456
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4458
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 4459
    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0x25a

    iput v5, v4, Landroid/os/Message;->what:I

    .line 4460
    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 4461
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 4462
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4463
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    iget v7, v4, Landroid/os/Message;->arg1:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4433
    return-void
.end method

.method private onListPlayerAttributeRequest([B)V
    .locals 7
    .param p1, "address"    # [B

    .prologue
    const/4 v6, 0x0

    .line 4383
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4384
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "command"

    const-string/jumbo v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4385
    const-string/jumbo v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4386
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4388
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4389
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    .line 4388
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 4390
    .local v0, "deviceIndex":I
    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 4391
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "invalid index for device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    return-void

    .line 4394
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4395
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 4397
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    .line 4395
    const/16 v5, 0x25a

    invoke-virtual {v3, v5, v6, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4398
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4380
    return-void
.end method

.method private onListPlayerAttributeValues(B[B)V
    .locals 6
    .param p1, "attr"    # B
    .param p2, "address"    # [B

    .prologue
    const/4 v5, 0x1

    .line 4405
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4406
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "command"

    const-string/jumbo v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4407
    const-string/jumbo v3, "commandExtra"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4408
    const-string/jumbo v3, "Attribute"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 4409
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4410
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;

    iput-byte p1, v3, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->attr:B

    .line 4412
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4413
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    .line 4412
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 4414
    .local v0, "deviceIndex":I
    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 4415
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "invalid index for device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    return-void

    .line 4419
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4421
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 4422
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x25a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 4423
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 4424
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 4425
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4426
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4427
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4403
    return-void
.end method

.method private playItem(BJ[B)V
    .locals 8
    .param p1, "scope"    # B
    .param p2, "uid"    # J
    .param p4, "address"    # [B

    .prologue
    .line 2553
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;

    .line 2554
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 2553
    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/ArrayList;JLjava/lang/String;)V

    .line 2555
    .local v1, "itemAttr":Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x7d6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2556
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2550
    return-void
.end method

.method private native playItemRspNative(I[B)Z
.end method

.method private processChangePath(IJLjava/lang/String;)V
    .locals 16
    .param p1, "direction"    # I
    .param p2, "folderUid"    # J
    .param p4, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2196
    const-wide/16 v12, 0x0

    .line 2197
    .local v12, "numberOfItems":J
    const/4 v14, 0x4

    .line 2198
    .local v14, "status":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 2199
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    .line 2200
    .local v10, "deviceIndex":I
    const/16 v2, 0xff

    if-ne v10, v2, :cond_0

    .line 2201
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v5, "device entry not present, bailing out"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void

    .line 2204
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "root"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2205
    packed-switch p1, :pswitch_data_0

    .line 2230
    const/4 v14, 0x7

    .line 2472
    :cond_1
    :goto_0
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2473
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z

    .line 2192
    return-void

    .line 2207
    :pswitch_0
    const/16 v14, 0x9

    .line 2208
    goto :goto_0

    .line 2210
    :pswitch_1
    const-wide/16 v6, 0x1

    cmp-long v2, p2, v6

    if-nez v2, :cond_2

    .line 2211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "titles"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2212
    const-string/jumbo v2, "titles"

    .line 2213
    const-string/jumbo v5, "title"

    .line 2212
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12

    goto :goto_0

    .line 2214
    :cond_2
    const-wide/16 v6, 0x2

    cmp-long v2, p2, v6

    if-nez v2, :cond_3

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "albums"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2216
    const-string/jumbo v2, "albums"

    .line 2217
    const-string/jumbo v5, "album_id"

    .line 2216
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12

    goto :goto_0

    .line 2218
    :cond_3
    const-wide/16 v6, 0x3

    cmp-long v2, p2, v6

    if-nez v2, :cond_4

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "artists"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2220
    const-string/jumbo v2, "artists"

    .line 2221
    const-string/jumbo v5, "artist_id"

    .line 2220
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12

    goto/16 :goto_0

    .line 2222
    :cond_4
    const-wide/16 v6, 0x4

    cmp-long v2, p2, v6

    if-nez v2, :cond_5

    .line 2223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "playlists"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumPlaylistItems()J

    move-result-wide v12

    goto/16 :goto_0

    .line 2226
    :cond_5
    const/16 v14, 0x9

    goto/16 :goto_0

    .line 2233
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "titles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2234
    packed-switch p1, :pswitch_data_1

    .line 2263
    const/4 v14, 0x7

    .line 2264
    goto/16 :goto_0

    .line 2236
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "root"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2237
    const-wide/16 v12, 0x4

    .line 2238
    goto/16 :goto_0

    .line 2240
    :pswitch_3
    const/4 v8, 0x0

    .line 2242
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2244
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is_music=1 AND _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2246
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2242
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2247
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_7

    .line 2248
    const/16 v14, 0x8

    .line 2257
    :goto_1
    if-eqz v8, :cond_1

    .line 2258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2250
    :cond_7
    const/16 v14, 0x9

    goto :goto_1

    .line 2251
    .local v8, "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 2252
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2253
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2256
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 2266
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "albums"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2267
    packed-switch p1, :pswitch_data_2

    .line 2334
    const/4 v14, 0x7

    .line 2335
    goto/16 :goto_0

    .line 2269
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "root"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2271
    const-wide/16 v12, 0x4

    goto/16 :goto_0

    .line 2273
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "albums"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2275
    const-string/jumbo v2, "albums"

    .line 2276
    const-string/jumbo v5, "album_id"

    .line 2275
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12

    goto/16 :goto_0

    .line 2280
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 2281
    const/4 v8, 0x0

    .line 2283
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2285
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "album"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is_music=1 AND album_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2288
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2283
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2289
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_b

    .line 2290
    :cond_a
    const/16 v14, 0x9

    .line 2302
    :goto_2
    if-eqz v8, :cond_1

    .line 2303
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2292
    :cond_b
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v12, v2

    .line 2293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    .line 2294
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 2293
    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2296
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v11

    .line 2297
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2298
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2302
    if-eqz v8, :cond_1

    .line 2303
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2301
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 2302
    if-eqz v8, :cond_c

    .line 2303
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2301
    :cond_c
    throw v2

    .line 2307
    :cond_d
    const/4 v8, 0x0

    .line 2309
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2311
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is_music=1 AND _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2313
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2309
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 2317
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_e

    .line 2318
    const/16 v14, 0x8

    .line 2327
    :goto_3
    if-eqz v8, :cond_1

    .line 2328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2320
    :cond_e
    const/16 v14, 0x9

    goto :goto_3

    .line 2321
    .local v8, "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v11

    .line 2322
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2323
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 2326
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    throw v2

    .line 2337
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "artists"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2338
    packed-switch p1, :pswitch_data_3

    .line 2403
    const/4 v14, 0x7

    .line 2404
    goto/16 :goto_0

    .line 2340
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "root"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2342
    const-wide/16 v12, 0x4

    goto/16 :goto_0

    .line 2344
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "artists"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2346
    const-string/jumbo v2, "artists"

    .line 2347
    const-string/jumbo v5, "artist_id"

    .line 2346
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12

    goto/16 :goto_0

    .line 2351
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 2352
    const/4 v8, 0x0

    .line 2354
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2356
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "artist"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is_music=1 AND artist_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2359
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2354
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2360
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_11

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v2

    if-nez v2, :cond_12

    .line 2361
    :cond_11
    const/16 v14, 0x9

    .line 2374
    :goto_4
    if-eqz v8, :cond_1

    .line 2375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2363
    :cond_12
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v12, v2

    .line 2364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    .line 2365
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 2364
    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "artists"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 2368
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v11

    .line 2369
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2370
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2374
    if-eqz v8, :cond_1

    .line 2375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2373
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    .line 2374
    if-eqz v8, :cond_13

    .line 2375
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2373
    :cond_13
    throw v2

    .line 2379
    :cond_14
    const/4 v8, 0x0

    .line 2381
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    .line 2383
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is_music=1 AND _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2385
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2381
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-object v8

    .line 2386
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_15

    .line 2387
    const/16 v14, 0x8

    .line 2396
    :goto_5
    if-eqz v8, :cond_1

    .line 2397
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2389
    :cond_15
    const/16 v14, 0x9

    goto :goto_5

    .line 2390
    .local v8, "cursor":Landroid/database/Cursor;
    :catch_4
    move-exception v11

    .line 2391
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2392
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_0

    .line 2395
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    throw v2

    .line 2406
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "playlists"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2407
    packed-switch p1, :pswitch_data_4

    .line 2465
    const/4 v14, 0x7

    .line 2466
    goto/16 :goto_0

    .line 2409
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 2410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "root"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2411
    const-wide/16 v12, 0x4

    goto/16 :goto_0

    .line 2413
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const-string/jumbo v5, "playlists"

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2415
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumPlaylistItems()J

    move-result-wide v12

    goto/16 :goto_0

    .line 2419
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2420
    const/4 v8, 0x0

    .line 2421
    .restart local v8    # "cursor":Landroid/database/Cursor;
    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/String;

    .line 2422
    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 2423
    const-string/jumbo v2, "title"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 2424
    const-string/jumbo v2, "_data"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 2425
    const-string/jumbo v2, "album"

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 2426
    const-string/jumbo v2, "artist"

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 2427
    const-string/jumbo v2, "duration"

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 2428
    const-string/jumbo v2, "play_order"

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 2429
    const-string/jumbo v2, "audio_id"

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 2430
    const-string/jumbo v2, "is_music"

    const/16 v5, 0x8

    aput-object v2, v4, v5

    .line 2433
    .local v4, "playlistMemberCols":[Ljava/lang/String;
    :try_start_c
    const-string/jumbo v2, "external"

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 2435
    .local v3, "uri":Landroid/net/Uri;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2436
    .local v15, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "title != \'\'"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2438
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2439
    const-string/jumbo v7, "play_order"

    .line 2438
    const/4 v6, 0x0

    .line 2437
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2440
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_18

    .line 2441
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v12, v2

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    .line 2443
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 2442
    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v10

    .line 2445
    const-string/jumbo v5, "playlists"

    .line 2444
    invoke-static {v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 2455
    :goto_6
    if-eqz v8, :cond_1

    .line 2456
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2447
    :cond_18
    const/16 v14, 0x9

    goto :goto_6

    .line 2449
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v15    # "where":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v11

    .line 2450
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v2, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 2451
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePathRspNative(IJ[B)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 2455
    if-eqz v8, :cond_1

    .line 2456
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2454
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v2

    .line 2455
    if-eqz v8, :cond_19

    .line 2456
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2454
    :cond_19
    throw v2

    .line 2460
    .end local v4    # "playlistMemberCols":[Ljava/lang/String;
    :cond_1a
    const-wide/16 v12, 0x0

    .line 2461
    const/16 v14, 0x9

    goto/16 :goto_0

    .line 2469
    :cond_1b
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v5, "Current Path not set"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    const/16 v14, 0x9

    goto/16 :goto_0

    .line 2205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2234
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2267
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2338
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2407
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private processGetFolderItems(BJJII[ILjava/lang/String;)V
    .locals 14
    .param p1, "scope"    # B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "size"    # I
    .param p7, "numAttr"    # I
    .param p8, "attrs"    # [I
    .param p9, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2943
    if-nez p1, :cond_1

    .line 2944
    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->processGetMediaPlayerItems(BJJII[ILjava/lang/String;)V

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2946
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 2947
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, p7

    if-ge v12, v0, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2951
    :cond_3
    move/from16 v0, p7

    int-to-byte v9, v0

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->processGetFolderItemsInternal(BJJIB[ILjava/lang/String;)V

    goto :goto_0
.end method

.method private processGetFolderItemsInternal(BJJIB[ILjava/lang/String;)V
    .locals 54
    .param p1, "scope"    # B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "size"    # I
    .param p7, "numAttr"    # B
    .param p8, "attrs"    # [I
    .param p9, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3005
    const-wide/16 v6, 0x0

    .line 3006
    .local v6, "numItems":J
    sub-long v4, p4, p2

    const-wide/16 v16, 0x1

    add-long v50, v4, v16

    .line 3007
    .local v50, "reqItems":J
    const/4 v4, 0x3

    new-array v8, v4, [I

    .line 3008
    .local v8, "itemType":[I
    const/4 v4, 0x3

    new-array v9, v4, [J

    .line 3009
    .local v9, "uid":[J
    const/4 v4, 0x3

    new-array v10, v4, [I

    .line 3010
    .local v10, "type":[I
    const/4 v4, 0x3

    new-array v11, v4, [B

    .line 3011
    .local v11, "playable":[B
    const/4 v4, 0x3

    new-array v12, v4, [Ljava/lang/String;

    .line 3012
    .local v12, "displayName":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v13, v4, [B

    .line 3013
    .local v13, "numAtt":[B
    const/16 v4, 0x15

    new-array v14, v4, [Ljava/lang/String;

    .line 3014
    .local v14, "attValues":[Ljava/lang/String;
    const/16 v4, 0x15

    new-array v15, v4, [I

    .line 3015
    .local v15, "attIds":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v37

    .line 3016
    .local v37, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3018
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v38

    .line 3019
    .local v38, "deviceIndex":I
    const/16 v4, 0xff

    move/from16 v0, v38

    if-ne v0, v4, :cond_0

    .line 3020
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "device entry not present, bailing out"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    return-void

    .line 3027
    :cond_0
    const/16 v31, 0x0

    .local v31, "count":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, p7

    if-ge v0, v1, :cond_1

    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 3032
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_60

    .line 3034
    const/16 v31, 0x0

    :goto_1
    const/16 v4, 0x15

    move/from16 v0, v31

    if-ge v0, v4, :cond_2

    .line 3035
    const-string/jumbo v4, ""

    aput-object v4, v14, v31

    .line 3036
    const/4 v4, 0x0

    aput v4, v15, v31

    .line 3034
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 3045
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isCurrentPathValid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3046
    const/16 v5, 0x9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3050
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Current path not set"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-void

    .line 3054
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-ltz v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-gez v4, :cond_5

    .line 3058
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3055
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3059
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Wrong start/end index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    return-void

    .line 3054
    :cond_5
    cmp-long v4, p2, p4

    if-gtz v4, :cond_4

    .line 3063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "root"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3064
    const-wide/16 v4, 0x4

    .line 3065
    cmp-long v4, p2, v4

    if-ltz v4, :cond_6

    .line 3066
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3067
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3071
    return-void

    .line 3064
    :cond_6
    const-wide/16 v4, 0x4

    .line 3077
    sub-long v32, v4, p2

    .line 3078
    .local v32, "availableItems":J
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_7

    .line 3079
    const-wide/16 v32, 0x3

    .line 3080
    :cond_7
    cmp-long v4, v50, v32

    if-lez v4, :cond_8

    .line 3081
    move-wide/from16 v50, v32

    .line 3085
    :cond_8
    move-wide/from16 v6, v50

    .line 3087
    const/16 v31, 0x0

    :goto_2
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_9

    .line 3088
    move/from16 v0, v31

    int-to-long v4, v0

    add-long v46, p2, v4

    .line 3089
    .local v46, "index":J
    move-wide/from16 v0, v46

    long-to-int v4, v0

    packed-switch v4, :pswitch_data_0

    .line 3123
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "wrong index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3124
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3087
    :goto_3
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 3091
    :pswitch_0
    const/4 v4, 0x2

    aput v4, v8, v31

    .line 3092
    const-wide/16 v4, 0x2

    aput-wide v4, v9, v31

    .line 3093
    const/4 v4, 0x2

    aput v4, v10, v31

    .line 3094
    const/4 v4, 0x0

    aput-byte v4, v11, v31

    .line 3095
    const-string/jumbo v4, "albums"

    aput-object v4, v12, v31

    .line 3096
    const/4 v4, 0x0

    aput-byte v4, v13, v31

    goto :goto_3

    .line 3099
    :pswitch_1
    const/4 v4, 0x2

    aput v4, v8, v31

    .line 3100
    const-wide/16 v4, 0x3

    aput-wide v4, v9, v31

    .line 3101
    const/4 v4, 0x3

    aput v4, v10, v31

    .line 3102
    const/4 v4, 0x0

    aput-byte v4, v11, v31

    .line 3103
    const-string/jumbo v4, "artists"

    aput-object v4, v12, v31

    .line 3104
    const/4 v4, 0x0

    aput-byte v4, v13, v31

    goto :goto_3

    .line 3107
    :pswitch_2
    const/4 v4, 0x2

    aput v4, v8, v31

    .line 3108
    const-wide/16 v4, 0x4

    aput-wide v4, v9, v31

    .line 3109
    const/4 v4, 0x5

    aput v4, v10, v31

    .line 3110
    const/4 v4, 0x0

    aput-byte v4, v11, v31

    .line 3111
    const-string/jumbo v4, "playlists"

    aput-object v4, v12, v31

    .line 3112
    const/4 v4, 0x0

    aput-byte v4, v13, v31

    goto :goto_3

    .line 3115
    :pswitch_3
    const/4 v4, 0x2

    aput v4, v8, v31

    .line 3116
    const-wide/16 v4, 0x1

    aput-wide v4, v9, v31

    .line 3117
    const/4 v4, 0x1

    aput v4, v10, v31

    .line 3118
    const/4 v4, 0x0

    aput-byte v4, v11, v31

    .line 3119
    const-string/jumbo v4, "titles"

    aput-object v4, v12, v31

    .line 3120
    const/4 v4, 0x0

    aput-byte v4, v13, v31

    goto :goto_3

    .line 3131
    .end local v46    # "index":J
    :cond_9
    const/16 v31, 0x0

    :goto_4
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 3132
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v16, v8, v31

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v16, v9, v31

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v16, v10, v31

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 3134
    :cond_a
    const/4 v5, 0x4

    .line 3137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    move-object/from16 v4, p0

    .line 3134
    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3003
    .end local v32    # "availableItems":J
    :cond_b
    :goto_5
    return-void

    .line 3138
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "titles"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3139
    const-wide/16 v32, 0x0

    .line 3140
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3142
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    .line 3144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "is_music=1"

    .line 3145
    const-string/jumbo v21, "title_key"

    .line 3144
    const/16 v20, 0x0

    .line 3142
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3146
    .local v36, "cursor":Landroid/database/Cursor;
    if-eqz v36, :cond_f

    .line 3147
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3148
    cmp-long v4, p2, v32

    if-ltz v4, :cond_e

    .line 3149
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3150
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3215
    if-eqz v36, :cond_d

    .line 3216
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3154
    :cond_d
    return-void

    .line 3156
    :cond_e
    :try_start_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3157
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_6
    move/from16 v0, v41

    int-to-long v4, v0

    cmp-long v4, v4, p2

    if-gez v4, :cond_11

    .line 3158
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3157
    add-int/lit8 v41, v41, 0x1

    goto :goto_6

    .line 3161
    .end local v41    # "i":I
    :cond_f
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3162
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3215
    if-eqz v36, :cond_10

    .line 3216
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3166
    :cond_10
    return-void

    .line 3172
    .restart local v41    # "i":I
    :cond_11
    sub-long v32, v32, p2

    .line 3173
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_12

    .line 3174
    const-wide/16 v32, 0x3

    .line 3175
    :cond_12
    cmp-long v4, v50, v32

    if-lez v4, :cond_13

    .line 3176
    move-wide/from16 v50, v32

    .line 3181
    :cond_13
    const/16 v44, 0x0

    .local v44, "index":I
    :goto_7
    move/from16 v0, v44

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_16

    .line 3182
    const/4 v4, 0x3

    :try_start_2
    aput v4, v8, v44

    .line 3183
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3184
    const/4 v4, 0x0

    aput v4, v10, v44

    .line 3185
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3187
    const-string/jumbo v4, "title"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3186
    aput-object v4, v12, v44

    .line 3189
    const/16 v52, 0x0

    .line 3190
    .local v52, "validAttrib":I
    const/16 v30, 0x0

    .local v30, "attIndex":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, p7

    if-ge v0, v1, :cond_15

    .line 3191
    aget v4, p8, v30

    const/4 v5, 0x7

    if-gt v4, v5, :cond_14

    .line 3192
    aget v4, p8, v30

    const/4 v5, 0x1

    if-lt v4, v5, :cond_14

    .line 3193
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    .line 3195
    aget v5, p8, v30

    .line 3194
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 3193
    aput-object v5, v14, v4

    .line 3196
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    aget v5, p8, v30

    aput v5, v15, v4

    .line 3197
    add-int/lit8 v52, v52, 0x1

    .line 3190
    :cond_14
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 3200
    :cond_15
    move/from16 v0, v52

    int-to-byte v4, v0

    aput-byte v4, v13, v44

    .line 3201
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3181
    add-int/lit8 v44, v44, 0x1

    goto :goto_7

    .line 3203
    .end local v30    # "attIndex":I
    .end local v52    # "validAttrib":I
    :cond_16
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3204
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3215
    if-eqz v36, :cond_b

    .line 3216
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3208
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v41    # "i":I
    .end local v44    # "index":I
    :catch_0
    move-exception v40

    .line 3209
    .local v40, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3210
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3215
    if-eqz v36, :cond_b

    .line 3216
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3214
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 3215
    if-eqz v36, :cond_17

    .line 3216
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3214
    :cond_17
    throw v4

    .line 3219
    .end local v32    # "availableItems":J
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "albums"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    .line 3221
    const-wide/16 v32, 0x0

    .line 3222
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3224
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_4
    const-string/jumbo v4, "albums"

    .line 3225
    const-string/jumbo v5, "album_id"

    .line 3224
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v32

    .line 3226
    cmp-long v4, p2, v32

    if-ltz v4, :cond_19

    .line 3227
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3228
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3232
    return-void

    .line 3239
    :cond_19
    sub-long v32, v32, p2

    .line 3240
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_1a

    .line 3241
    const-wide/16 v32, 0x3

    .line 3242
    :cond_1a
    cmp-long v4, v50, v32

    if-lez v4, :cond_1b

    .line 3243
    move-wide/from16 v0, v32

    long-to-int v4, v0

    int-to-long v0, v4

    move-wide/from16 v50, v0

    .line 3244
    :cond_1b
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "revised reqItems: "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3248
    const-string/jumbo v19, "is_music=1"

    .line 3249
    const-string/jumbo v21, "album_key"

    .line 3248
    const/16 v20, 0x0

    .line 3246
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3251
    .local v36, "cursor":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 3252
    if-eqz v36, :cond_1e

    .line 3253
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 3262
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_1c

    .line 3263
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v50, v0

    .line 3265
    :cond_1c
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3266
    const/16 v44, 0x0

    .line 3267
    .restart local v44    # "index":I
    const-wide/16 v48, -0x1

    .line 3268
    .local v48, "prevElem":J
    const-wide/16 v34, -0x1

    .line 3269
    .local v34, "curElem":J
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-lez v4, :cond_21

    if-lez v31, :cond_21

    .line 3271
    const-string/jumbo v4, "album_id"

    .line 3270
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 3272
    cmp-long v4, v34, v48

    if-eqz v4, :cond_1d

    .line 3273
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_20

    .line 3274
    const-wide/16 v4, 0x1

    sub-long p2, p2, v4

    .line 3289
    :cond_1d
    :goto_a
    move-wide/from16 v48, v34

    .line 3290
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3291
    add-int/lit8 v31, v31, -0x1

    goto :goto_9

    .line 3255
    .end local v34    # "curElem":J
    .end local v44    # "index":I
    .end local v48    # "prevElem":J
    :cond_1e
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3256
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3312
    if-eqz v36, :cond_1f

    .line 3313
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_1f
    return-void

    .line 3276
    .restart local v34    # "curElem":J
    .restart local v44    # "index":I
    .restart local v48    # "prevElem":J
    :cond_20
    const/4 v4, 0x2

    :try_start_5
    aput v4, v8, v44

    .line 3278
    const-string/jumbo v4, "album_id"

    .line 3277
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3279
    const/4 v4, 0x2

    aput v4, v10, v44

    .line 3280
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3283
    const-string/jumbo v4, "album"

    .line 3282
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 3281
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v44

    .line 3284
    const/4 v4, 0x0

    aput-byte v4, v13, v44

    .line 3285
    add-int/lit8 v44, v44, 0x1

    .line 3286
    const-wide/16 v4, 0x1

    sub-long v50, v50, v4

    goto :goto_a

    .line 3293
    :cond_21
    if-lez v44, :cond_22

    .line 3294
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3295
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3312
    :goto_b
    if-eqz v36, :cond_b

    .line 3313
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3303
    :cond_22
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3300
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_b

    .line 3305
    .end local v34    # "curElem":J
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v44    # "index":I
    .end local v48    # "prevElem":J
    :catch_1
    move-exception v40

    .line 3306
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3307
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3312
    if-eqz v36, :cond_b

    .line 3313
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3311
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 3312
    if-eqz v36, :cond_23

    .line 3313
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3311
    :cond_23
    throw v4

    .line 3317
    .end local v32    # "availableItems":J
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 3318
    .local v42, "folderUid":J
    const-wide/16 v32, 0x0

    .line 3319
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3321
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is_music=1 AND album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3325
    const-string/jumbo v21, "album_key"

    .line 3324
    const/16 v20, 0x0

    .line 3321
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3327
    .local v36, "cursor":Landroid/database/Cursor;
    if-eqz v36, :cond_27

    .line 3328
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3329
    cmp-long v4, p2, v32

    if-ltz v4, :cond_26

    .line 3330
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3331
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3398
    if-eqz v36, :cond_25

    .line 3399
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3335
    :cond_25
    return-void

    .line 3337
    :cond_26
    :try_start_9
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3338
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_c
    move/from16 v0, v41

    int-to-long v4, v0

    cmp-long v4, v4, p2

    if-gez v4, :cond_29

    .line 3339
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3338
    add-int/lit8 v41, v41, 0x1

    goto :goto_c

    .line 3342
    .end local v41    # "i":I
    :cond_27
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3343
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3398
    if-eqz v36, :cond_28

    .line 3399
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3347
    :cond_28
    return-void

    .line 3354
    .restart local v41    # "i":I
    :cond_29
    sub-long v32, v32, p2

    .line 3355
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_2a

    .line 3356
    const-wide/16 v32, 0x3

    .line 3357
    :cond_2a
    cmp-long v4, v50, v32

    if-lez v4, :cond_2b

    .line 3358
    move-wide/from16 v50, v32

    .line 3364
    :cond_2b
    const/16 v44, 0x0

    .restart local v44    # "index":I
    :goto_d
    move/from16 v0, v44

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_2e

    .line 3365
    const/4 v4, 0x3

    :try_start_a
    aput v4, v8, v44

    .line 3366
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3367
    const/4 v4, 0x0

    aput v4, v10, v44

    .line 3368
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3370
    const-string/jumbo v4, "title"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3369
    aput-object v4, v12, v44

    .line 3372
    const/16 v52, 0x0

    .line 3373
    .restart local v52    # "validAttrib":I
    const/16 v30, 0x0

    .restart local v30    # "attIndex":I
    :goto_e
    move/from16 v0, v30

    move/from16 v1, p7

    if-ge v0, v1, :cond_2d

    .line 3374
    aget v4, p8, v30

    const/4 v5, 0x7

    if-gt v4, v5, :cond_2c

    .line 3375
    aget v4, p8, v30

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2c

    .line 3376
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    .line 3378
    aget v5, p8, v30

    .line 3377
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 3376
    aput-object v5, v14, v4

    .line 3379
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    aget v5, p8, v30

    aput v5, v15, v4

    .line 3380
    add-int/lit8 v52, v52, 0x1

    .line 3373
    :cond_2c
    add-int/lit8 v30, v30, 0x1

    goto :goto_e

    .line 3383
    :cond_2d
    move/from16 v0, v52

    int-to-byte v4, v0

    aput-byte v4, v13, v44

    .line 3384
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3364
    add-int/lit8 v44, v44, 0x1

    goto :goto_d

    .line 3386
    .end local v30    # "attIndex":I
    .end local v52    # "validAttrib":I
    :cond_2e
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3387
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3398
    if-eqz v36, :cond_b

    .line 3399
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3391
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v41    # "i":I
    .end local v44    # "index":I
    :catch_2
    move-exception v40

    .line 3392
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3393
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3398
    if-eqz v36, :cond_b

    .line 3399
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3397
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    .line 3398
    if-eqz v36, :cond_2f

    .line 3399
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3397
    :cond_2f
    throw v4

    .line 3403
    .end local v32    # "availableItems":J
    .end local v42    # "folderUid":J
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "artists"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3c

    .line 3405
    const-wide/16 v32, 0x0

    .line 3406
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3408
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string/jumbo v4, "artists"

    .line 3409
    const-string/jumbo v5, "artist_id"

    .line 3408
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumItems(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v32

    .line 3410
    cmp-long v4, p2, v32

    if-ltz v4, :cond_31

    .line 3411
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3412
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3416
    return-void

    .line 3423
    :cond_31
    sub-long v32, v32, p2

    .line 3424
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_32

    .line 3425
    const-wide/16 v32, 0x3

    .line 3426
    :cond_32
    cmp-long v4, v50, v32

    if-lez v4, :cond_33

    .line 3427
    move-wide/from16 v0, v32

    long-to-int v4, v0

    int-to-long v0, v4

    move-wide/from16 v50, v0

    .line 3431
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3433
    const-string/jumbo v19, "is_music=1"

    .line 3434
    const-string/jumbo v21, "artist_key"

    .line 3433
    const/16 v20, 0x0

    .line 3431
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3436
    .local v36, "cursor":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 3437
    if-eqz v36, :cond_36

    .line 3438
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 3447
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_34

    .line 3448
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v50, v0

    .line 3450
    :cond_34
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3451
    const/16 v44, 0x0

    .line 3452
    .restart local v44    # "index":I
    const-wide/16 v48, -0x1

    .line 3453
    .restart local v48    # "prevElem":J
    const-wide/16 v34, -0x1

    .line 3454
    .restart local v34    # "curElem":J
    :goto_f
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-lez v4, :cond_39

    if-lez v31, :cond_39

    .line 3456
    const-string/jumbo v4, "artist_id"

    .line 3455
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 3457
    cmp-long v4, v34, v48

    if-eqz v4, :cond_35

    .line 3458
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_38

    .line 3459
    const-wide/16 v4, 0x1

    sub-long p2, p2, v4

    .line 3473
    :cond_35
    :goto_10
    move-wide/from16 v48, v34

    .line 3474
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3475
    add-int/lit8 v31, v31, -0x1

    goto :goto_f

    .line 3440
    .end local v34    # "curElem":J
    .end local v44    # "index":I
    .end local v48    # "prevElem":J
    :cond_36
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3441
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 3496
    if-eqz v36, :cond_37

    .line 3497
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3445
    :cond_37
    return-void

    .line 3461
    .restart local v34    # "curElem":J
    .restart local v44    # "index":I
    .restart local v48    # "prevElem":J
    :cond_38
    const/4 v4, 0x2

    :try_start_d
    aput v4, v8, v44

    .line 3463
    const-string/jumbo v4, "artist_id"

    .line 3462
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3464
    const/4 v4, 0x3

    aput v4, v10, v44

    .line 3465
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3467
    const-string/jumbo v4, "artist"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 3466
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v44

    .line 3468
    const/4 v4, 0x0

    aput-byte v4, v13, v44

    .line 3469
    add-int/lit8 v44, v44, 0x1

    .line 3470
    const-wide/16 v4, 0x1

    sub-long v50, v50, v4

    goto :goto_10

    .line 3477
    :cond_39
    if-lez v44, :cond_3a

    .line 3478
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3479
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3496
    :goto_11
    if-eqz v36, :cond_b

    .line 3497
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3487
    :cond_3a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3484
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_11

    .line 3489
    .end local v34    # "curElem":J
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v44    # "index":I
    .end local v48    # "prevElem":J
    :catch_3
    move-exception v40

    .line 3490
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3491
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3496
    if-eqz v36, :cond_b

    .line 3497
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3495
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    .line 3496
    if-eqz v36, :cond_3b

    .line 3497
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3495
    :cond_3b
    throw v4

    .line 3501
    .end local v32    # "availableItems":J
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 3502
    .restart local v42    # "folderUid":J
    const-wide/16 v32, 0x0

    .line 3503
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3505
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is_music=1 AND artist_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3509
    const-string/jumbo v21, "artist_key"

    .line 3508
    const/16 v20, 0x0

    .line 3505
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3511
    .local v36, "cursor":Landroid/database/Cursor;
    if-eqz v36, :cond_3f

    .line 3512
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3513
    cmp-long v4, p2, v32

    if-ltz v4, :cond_3e

    .line 3514
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3515
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 3582
    if-eqz v36, :cond_3d

    .line 3583
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3519
    :cond_3d
    return-void

    .line 3521
    :cond_3e
    :try_start_11
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3522
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_12
    move/from16 v0, v41

    int-to-long v4, v0

    cmp-long v4, v4, p2

    if-gez v4, :cond_41

    .line 3523
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3522
    add-int/lit8 v41, v41, 0x1

    goto :goto_12

    .line 3526
    .end local v41    # "i":I
    :cond_3f
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3527
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 3582
    if-eqz v36, :cond_40

    .line 3583
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3531
    :cond_40
    return-void

    .line 3538
    .restart local v41    # "i":I
    :cond_41
    sub-long v32, v32, p2

    .line 3539
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_42

    .line 3540
    const-wide/16 v32, 0x3

    .line 3541
    :cond_42
    cmp-long v4, v50, v32

    if-lez v4, :cond_43

    .line 3542
    move-wide/from16 v50, v32

    .line 3548
    :cond_43
    const/16 v44, 0x0

    .restart local v44    # "index":I
    :goto_13
    move/from16 v0, v44

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_46

    .line 3549
    const/4 v4, 0x3

    :try_start_12
    aput v4, v8, v44

    .line 3550
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3551
    const/4 v4, 0x0

    aput v4, v10, v44

    .line 3552
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3554
    const-string/jumbo v4, "title"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3553
    aput-object v4, v12, v44

    .line 3556
    const/16 v52, 0x0

    .line 3557
    .restart local v52    # "validAttrib":I
    const/16 v30, 0x0

    .restart local v30    # "attIndex":I
    :goto_14
    move/from16 v0, v30

    move/from16 v1, p7

    if-ge v0, v1, :cond_45

    .line 3558
    aget v4, p8, v30

    const/4 v5, 0x7

    if-gt v4, v5, :cond_44

    .line 3559
    aget v4, p8, v30

    const/4 v5, 0x1

    if-lt v4, v5, :cond_44

    .line 3560
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    .line 3562
    aget v5, p8, v30

    .line 3561
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 3560
    aput-object v5, v14, v4

    .line 3563
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    aget v5, p8, v30

    aput v5, v15, v4

    .line 3564
    add-int/lit8 v52, v52, 0x1

    .line 3557
    :cond_44
    add-int/lit8 v30, v30, 0x1

    goto :goto_14

    .line 3567
    :cond_45
    move/from16 v0, v52

    int-to-byte v4, v0

    aput-byte v4, v13, v44

    .line 3568
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3548
    add-int/lit8 v44, v44, 0x1

    goto :goto_13

    .line 3570
    .end local v30    # "attIndex":I
    .end local v52    # "validAttrib":I
    :cond_46
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3571
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 3582
    if-eqz v36, :cond_b

    .line 3583
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3575
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v41    # "i":I
    .end local v44    # "index":I
    :catch_4
    move-exception v40

    .line 3576
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_13
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3577
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 3582
    if-eqz v36, :cond_b

    .line 3583
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3581
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v4

    .line 3582
    if-eqz v36, :cond_47

    .line 3583
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3581
    :cond_47
    throw v4

    .line 3587
    .end local v32    # "availableItems":J
    .end local v42    # "folderUid":J
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "playlists"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_53

    .line 3589
    const-wide/16 v32, 0x0

    .line 3590
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3592
    .local v36, "cursor":Landroid/database/Cursor;
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNumPlaylistItems()J

    move-result-wide v32

    .line 3593
    cmp-long v4, p2, v32

    if-ltz v4, :cond_49

    .line 3594
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3595
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3599
    return-void

    .line 3605
    :cond_49
    sub-long v32, v32, p2

    .line 3606
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_4a

    .line 3607
    const-wide/16 v32, 0x3

    .line 3608
    :cond_4a
    cmp-long v4, v50, v32

    if-lez v4, :cond_4b

    .line 3609
    move-wide/from16 v0, v32

    long-to-int v4, v0

    int-to-long v0, v4

    move-wide/from16 v50, v0

    .line 3613
    :cond_4b
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3614
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v18, v5

    .line 3615
    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    aput-object v4, v18, v5

    .line 3618
    .local v18, "cols":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3619
    sget-object v17, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3620
    const-string/jumbo v19, "name != \'\'"

    .line 3621
    const-string/jumbo v21, "name"

    .line 3620
    const/16 v20, 0x0

    .line 3618
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3623
    .local v36, "cursor":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 3624
    if-eqz v36, :cond_4d

    .line 3625
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 3634
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_4c

    .line 3635
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v50, v0

    .line 3637
    :cond_4c
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3638
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_15
    move/from16 v0, v41

    int-to-long v4, v0

    cmp-long v4, v4, p2

    if-gez v4, :cond_4f

    .line 3639
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3638
    add-int/lit8 v41, v41, 0x1

    goto :goto_15

    .line 3627
    .end local v41    # "i":I
    :cond_4d
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3628
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 3674
    if-eqz v36, :cond_4e

    .line 3675
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3632
    :cond_4e
    return-void

    .line 3641
    .restart local v41    # "i":I
    :cond_4f
    const/16 v44, 0x0

    .line 3642
    .restart local v44    # "index":I
    const/16 v44, 0x0

    :goto_16
    move/from16 v0, v44

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_50

    .line 3643
    const/4 v4, 0x2

    :try_start_15
    aput v4, v8, v44

    .line 3645
    const-string/jumbo v4, "_id"

    .line 3644
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3646
    const/4 v4, 0x5

    aput v4, v10, v44

    .line 3647
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3650
    const-string/jumbo v4, "name"

    .line 3649
    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3648
    aput-object v4, v12, v44

    .line 3651
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3642
    add-int/lit8 v44, v44, 0x1

    goto :goto_16

    .line 3653
    :cond_50
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3655
    if-lez v44, :cond_51

    .line 3656
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3657
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 3674
    :goto_17
    if-eqz v36, :cond_b

    .line 3675
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3665
    :cond_51
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3662
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_17

    .line 3667
    .end local v18    # "cols":[Ljava/lang/String;
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v41    # "i":I
    .end local v44    # "index":I
    :catch_5
    move-exception v40

    .line 3668
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_17
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3669
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 3674
    if-eqz v36, :cond_b

    .line 3675
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3673
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v4

    .line 3674
    if-eqz v36, :cond_52

    .line 3675
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3673
    :cond_52
    throw v4

    .line 3679
    .end local v32    # "availableItems":J
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 3680
    .restart local v42    # "folderUid":J
    const-wide/16 v32, 0x0

    .line 3681
    .restart local v32    # "availableItems":J
    const/16 v36, 0x0

    .line 3683
    .local v36, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3684
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v21, v5

    .line 3685
    const-string/jumbo v4, "title"

    const/4 v5, 0x1

    aput-object v4, v21, v5

    .line 3686
    const-string/jumbo v4, "_data"

    const/4 v5, 0x2

    aput-object v4, v21, v5

    .line 3687
    const-string/jumbo v4, "album"

    const/4 v5, 0x3

    aput-object v4, v21, v5

    .line 3688
    const-string/jumbo v4, "artist"

    const/4 v5, 0x4

    aput-object v4, v21, v5

    .line 3689
    const-string/jumbo v4, "duration"

    const/4 v5, 0x5

    aput-object v4, v21, v5

    .line 3690
    const-string/jumbo v4, "play_order"

    const/4 v5, 0x6

    aput-object v4, v21, v5

    .line 3691
    const-string/jumbo v4, "audio_id"

    const/4 v5, 0x7

    aput-object v4, v21, v5

    .line 3692
    const-string/jumbo v4, "is_music"

    const/16 v5, 0x8

    aput-object v4, v21, v5

    .line 3696
    .local v21, "playlistMemberCols":[Ljava/lang/String;
    :try_start_18
    const-string/jumbo v4, "external"

    move-wide/from16 v0, v42

    invoke-static {v4, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v20

    .line 3698
    .local v20, "uri":Landroid/net/Uri;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    .line 3699
    .local v53, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "title != \'\'"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 3701
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3702
    const-string/jumbo v24, "play_order"

    .line 3701
    const/16 v23, 0x0

    .line 3700
    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3704
    .local v36, "cursor":Landroid/database/Cursor;
    if-eqz v36, :cond_56

    .line 3705
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 3706
    cmp-long v4, p2, v32

    if-ltz v4, :cond_55

    .line 3707
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3708
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 3776
    if-eqz v36, :cond_54

    .line 3777
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3712
    :cond_54
    return-void

    .line 3714
    :cond_55
    :try_start_19
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3715
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_18
    move/from16 v0, v41

    int-to-long v4, v0

    cmp-long v4, v4, p2

    if-gez v4, :cond_58

    .line 3716
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3715
    add-int/lit8 v41, v41, 0x1

    goto :goto_18

    .line 3719
    .end local v41    # "i":I
    :cond_56
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: could not fetch the elements"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3720
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 3776
    if-eqz v36, :cond_57

    .line 3777
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3724
    :cond_57
    return-void

    .line 3731
    .restart local v41    # "i":I
    :cond_58
    sub-long v32, v32, p2

    .line 3732
    const-wide/16 v4, 0x3

    cmp-long v4, v32, v4

    if-lez v4, :cond_59

    .line 3733
    const-wide/16 v32, 0x3

    .line 3734
    :cond_59
    cmp-long v4, v50, v32

    if-lez v4, :cond_5a

    .line 3735
    move-wide/from16 v50, v32

    .line 3741
    :cond_5a
    const/16 v44, 0x0

    .restart local v44    # "index":I
    :goto_19
    move/from16 v0, v44

    int-to-long v4, v0

    cmp-long v4, v4, v50

    if-gez v4, :cond_5d

    .line 3742
    const/4 v4, 0x3

    :try_start_1a
    aput v4, v8, v44

    .line 3743
    const-string/jumbo v4, "audio_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v44

    .line 3745
    const/4 v4, 0x0

    aput v4, v10, v44

    .line 3746
    const/4 v4, 0x0

    aput-byte v4, v11, v44

    .line 3748
    const-string/jumbo v4, "title"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3747
    aput-object v4, v12, v44

    .line 3750
    const/16 v52, 0x0

    .line 3751
    .restart local v52    # "validAttrib":I
    const/16 v30, 0x0

    .restart local v30    # "attIndex":I
    :goto_1a
    move/from16 v0, v30

    move/from16 v1, p7

    if-ge v0, v1, :cond_5c

    .line 3752
    aget v4, p8, v30

    const/4 v5, 0x7

    if-gt v4, v5, :cond_5b

    .line 3753
    aget v4, p8, v30

    const/4 v5, 0x1

    if-lt v4, v5, :cond_5b

    .line 3754
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    .line 3756
    aget v5, p8, v30

    .line 3755
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 3754
    aput-object v5, v14, v4

    .line 3757
    mul-int/lit8 v4, v44, 0x7

    add-int v4, v4, v30

    aget v5, p8, v30

    aput v5, v15, v4

    .line 3758
    add-int/lit8 v52, v52, 0x1

    .line 3751
    :cond_5b
    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    .line 3761
    :cond_5c
    move/from16 v0, v52

    int-to-byte v4, v0

    aput-byte v4, v13, v44

    .line 3762
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 3741
    add-int/lit8 v44, v44, 0x1

    goto :goto_19

    .line 3764
    .end local v30    # "attIndex":I
    .end local v52    # "validAttrib":I
    :cond_5d
    move/from16 v0, v44

    int-to-long v6, v0

    .line 3768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3765
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 3776
    if-eqz v36, :cond_b

    .line 3777
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3769
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v36    # "cursor":Landroid/database/Cursor;
    .end local v41    # "i":I
    .end local v44    # "index":I
    .end local v53    # "where":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v40

    .line 3770
    .restart local v40    # "e":Ljava/lang/Exception;
    :try_start_1b
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception e"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3771
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 3776
    if-eqz v36, :cond_b

    .line 3777
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3775
    .end local v40    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v4

    .line 3776
    if-eqz v36, :cond_5e

    .line 3777
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3775
    :cond_5e
    throw v4

    .line 3785
    .end local v21    # "playlistMemberCols":[Ljava/lang/String;
    .end local v32    # "availableItems":J
    .end local v42    # "folderUid":J
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3782
    const/16 v5, 0x9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3786
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "GetFolderItems fail as player is not browsable"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3788
    :cond_60
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 3789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_63

    .line 3790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 3791
    .local v45, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_61
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3792
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 3793
    .local v39, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3794
    invoke-virtual/range {v39 .. v39}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->IsRemoteAddressable()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3794
    if-eqz v4, :cond_61

    .line 3799
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v38

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 3796
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 3800
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "GetFolderItems fails: addressed player is not browsable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    return-void

    .line 3806
    .end local v39    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v45    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v4}, Landroid/media/RemoteController;->getRemoteControlClientNowPlayingEntries()V

    .line 3807
    new-instance v22, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    move-object/from16 v23, p0

    move-wide/from16 v24, p2

    move-wide/from16 v26, p4

    move/from16 v28, p7

    move-object/from16 v29, p8

    invoke-direct/range {v22 .. v29}, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JJB[I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    goto/16 :goto_5

    .line 3089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processGetItemAttr(BJB[ILjava/lang/String;)V
    .locals 18
    .param p1, "scope"    # B
    .param p2, "uid"    # J
    .param p4, "numAttr"    # B
    .param p5, "attrs"    # [I
    .param p6, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 2783
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v11

    .line 2784
    .local v11, "deviceIndex":I
    const/16 v3, 0xff

    if-ne v11, v3, :cond_0

    .line 2785
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "device entry not present, bailing out"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    return-void

    .line 2788
    :cond_0
    move/from16 v0, p4

    new-array v14, v0, [Ljava/lang/String;

    .line 2789
    .local v14, "textArray":[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 2790
    :cond_1
    const/4 v9, 0x0

    .line 2792
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v11

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v4, :cond_2

    .line 2793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v11

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "invalid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2792
    if-eqz v3, :cond_3

    .line 2797
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1, v14, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z

    .line 2798
    return-void

    .line 2800
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v11

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    .line 2802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is_music=1 AND _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2800
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2803
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2804
    :cond_4
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Invalid track UID"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cursor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    if-eqz v9, :cond_5

    .line 2807
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cursor.getCount() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2808
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1, v14, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2828
    :goto_0
    if-eqz v9, :cond_6

    .line 2829
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2777
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_1
    return-void

    .line 2811
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/4 v15, 0x0

    .line 2812
    .local v15, "validAttrib":I
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2813
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, p4

    if-ge v13, v0, :cond_9

    .line 2814
    aget v3, p5, v13

    const/4 v4, 0x7

    if-gt v3, v4, :cond_8

    aget v3, p5, v13

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    .line 2816
    aget v3, p5, v13

    .line 2815
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v13

    .line 2817
    add-int/lit8 v15, v15, 0x1

    .line 2813
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2821
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2820
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2823
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v15    # "validAttrib":I
    :catch_0
    move-exception v12

    .line 2824
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2825
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1, v14, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2828
    if-eqz v9, :cond_6

    .line 2829
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2827
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2828
    if-eqz v9, :cond_a

    .line 2829
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2827
    :cond_a
    throw v3

    .line 2833
    :cond_b
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Invalid scope"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 2834
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v1, v14, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItemAttrRspNative(B[I[Ljava/lang/String;[B)Z

    goto :goto_1
.end method

.method private processGetMediaPlayerItems(BJJII[ILjava/lang/String;)V
    .locals 18
    .param p1, "scope"    # B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "size"    # I
    .param p7, "numAttr"    # I
    .param p8, "attrs"    # [I
    .param p9, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2958
    move/from16 v0, p6

    new-array v6, v0, [B

    .line 2959
    .local v6, "folderItems":[B
    const/16 v2, 0x20

    new-array v7, v2, [I

    .line 2960
    .local v7, "folderItemLengths":[I
    const/4 v5, 0x0

    .line 2961
    .local v5, "availableMediaPlayers":I
    const/4 v10, 0x0

    .line 2962
    .local v10, "count":I
    const/4 v15, 0x0

    .line 2963
    .local v15, "positionItemStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 2964
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 2966
    .local v16, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2967
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 2968
    .local v12, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v12}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerAvailablility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2969
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 2970
    invoke-virtual {v12}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerItemEntry()[B

    move-result-object v14

    .line 2971
    .local v14, "playerEntry":[B
    invoke-virtual {v12}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerEntryLength()I

    move-result v13

    .line 2972
    .local v13, "length":I
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "availableMediaPlayers":I
    .local v9, "availableMediaPlayers":I
    aput v13, v7, v5

    .line 2973
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_1

    .line 2974
    add-int v2, v15, v10

    aget-byte v3, v14, v10

    aput-byte v3, v6, v2

    .line 2973
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2976
    :cond_1
    add-int/2addr v15, v13

    move v5, v9

    .end local v9    # "availableMediaPlayers":I
    .restart local v5    # "availableMediaPlayers":I
    goto :goto_0

    .line 2977
    .end local v13    # "length":I
    .end local v14    # "playerEntry":[B
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 2978
    const-wide/16 v2, 0x1

    sub-long p2, p2, v2

    goto :goto_0

    .line 2988
    .end local v12    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v16    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 2986
    const/4 v3, 0x4

    const/16 v4, 0x1357

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getMediaPlayerListRspNative(BII[B[I[B)Z

    .line 2957
    return-void
.end method

.method private processPlayItem(IJLjava/lang/String;)V
    .locals 18
    .param p1, "scope"    # I
    .param p2, "uid"    # J
    .param p4, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 2564
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2565
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 2566
    .local v12, "deviceIndex":I
    const/16 v4, 0xff

    if-ne v12, v4, :cond_0

    .line 2567
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "device entry not present, bailing out"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    return-void

    .line 2570
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v4, p2, v8

    if-gez v4, :cond_1

    .line 2574
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2573
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    .line 2575
    return-void

    .line 2577
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2579
    .local v15, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2580
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 2581
    .local v13, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v13}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2582
    invoke-virtual {v13}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->IsRemoteAddressable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2584
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2583
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    .line 2588
    return-void

    .line 2593
    .end local v13    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v15    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_19

    .line 2594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "root"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2596
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2595
    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    .line 2560
    :cond_4
    :goto_0
    return-void

    .line 2597
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "titles"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2598
    const/4 v10, 0x0

    .line 2600
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2601
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v12

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v5

    .line 2602
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "is_music=1 AND _id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2604
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2600
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2605
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 2606
    :cond_6
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "No such track"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2607
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    :goto_1
    if-eqz v10, :cond_4

    .line 2619
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2610
    :cond_7
    :try_start_1
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Play uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/RemoteController;->setRemoteControlClientPlayItem(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2613
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 2614
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2615
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2618
    if-eqz v10, :cond_4

    .line 2619
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2617
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2618
    if-eqz v10, :cond_8

    .line 2619
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2617
    :cond_8
    throw v4

    .line 2622
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "albums"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 2625
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2624
    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    goto/16 :goto_0

    .line 2627
    :cond_a
    const/4 v10, 0x0

    .line 2629
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2630
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v12

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v5

    .line 2631
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2632
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "is_music=1 AND _id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2633
    const-string/jumbo v8, "album_id"

    .line 2632
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2633
    const-string/jumbo v8, "="

    .line 2632
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2634
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v8, v8, v12

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v8

    .line 2632
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2635
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2629
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2636
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_c

    .line 2637
    :cond_b
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "No such track"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2638
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2649
    :goto_2
    if-eqz v10, :cond_4

    .line 2650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2641
    :cond_c
    :try_start_4
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Play uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/RemoteController;->setRemoteControlClientPlayItem(JI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2644
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v14

    .line 2645
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2646
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2649
    if-eqz v10, :cond_4

    .line 2650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2648
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 2649
    if-eqz v10, :cond_d

    .line 2650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2648
    :cond_d
    throw v4

    .line 2654
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "artists"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    .line 2657
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2656
    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    goto/16 :goto_0

    .line 2659
    :cond_f
    const/4 v10, 0x0

    .line 2661
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2662
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v12

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v5

    .line 2663
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2664
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "is_music=1 AND _id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2665
    const-string/jumbo v8, "artist_id"

    .line 2664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2665
    const-string/jumbo v8, "="

    .line 2664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2666
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v8, v8, v12

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v8

    .line 2664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2667
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2661
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2668
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 2669
    :cond_10
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "No such track"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2670
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2681
    :goto_3
    if-eqz v10, :cond_4

    .line 2682
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2673
    :cond_11
    :try_start_7
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Play uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/RemoteController;->setRemoteControlClientPlayItem(JI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 2676
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v14

    .line 2677
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2678
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2681
    if-eqz v10, :cond_4

    .line 2682
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2680
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    .line 2681
    if-eqz v10, :cond_12

    .line 2682
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_12
    throw v4

    .line 2686
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "playlists"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    .line 2689
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2688
    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    goto/16 :goto_0

    .line 2691
    :cond_14
    const/4 v10, 0x0

    .line 2693
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x9

    :try_start_9
    new-array v6, v4, [Ljava/lang/String;

    .line 2694
    const-string/jumbo v4, "_id"

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 2695
    const-string/jumbo v4, "title"

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 2696
    const-string/jumbo v4, "_data"

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 2697
    const-string/jumbo v4, "album"

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 2698
    const-string/jumbo v4, "artist"

    const/4 v7, 0x4

    aput-object v4, v6, v7

    .line 2699
    const-string/jumbo v4, "duration"

    const/4 v7, 0x5

    aput-object v4, v6, v7

    .line 2700
    const-string/jumbo v4, "play_order"

    const/4 v7, 0x6

    aput-object v4, v6, v7

    .line 2701
    const-string/jumbo v4, "audio_id"

    const/4 v7, 0x7

    aput-object v4, v6, v7

    .line 2702
    const-string/jumbo v4, "is_music"

    const/16 v7, 0x8

    aput-object v4, v6, v7

    .line 2704
    .local v6, "playlistMemberCols":[Ljava/lang/String;
    const-string/jumbo v4, "external"

    .line 2705
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v12

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2704
    invoke-static {v4, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 2706
    .local v5, "uri":Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2707
    .local v16, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "audio_id="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2709
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "play_order"

    const/4 v8, 0x0

    .line 2708
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2712
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_15

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_16

    .line 2713
    :cond_15
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "No such track"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2714
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2725
    :goto_4
    if-eqz v10, :cond_4

    .line 2726
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2717
    :cond_16
    :try_start_a
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Play uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/RemoteController;->setRemoteControlClientPlayItem(JI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 2720
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "playlistMemberCols":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "where":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v14

    .line 2721
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v4, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2722
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2725
    if-eqz v10, :cond_4

    .line 2726
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2724
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    .line 2725
    if-eqz v10, :cond_17

    .line 2726
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2724
    :cond_17
    throw v4

    .line 2732
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2731
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    goto/16 :goto_0

    .line 2735
    :cond_19
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_1a

    .line 2736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/RemoteController;->setRemoteControlClientPlayItem(JI)V

    goto/16 :goto_0

    .line 2739
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2738
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    .line 2740
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v7, "Play Item fails: Invalid scope"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processRCCStateChange(Ljava/lang/String;II)V
    .locals 12
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "isFocussed"    # I
    .param p3, "isAvailable"    # I

    .prologue
    .line 3818
    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processRCCStateChange: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    const/4 v0, 0x0

    .line 3820
    .local v0, "available":Z
    const/4 v3, 0x0

    .line 3821
    .local v3, "focussed":Z
    const/4 v5, 0x0

    .line 3822
    .local v5, "isResetFocusRequired":Z
    const/4 v1, 0x0

    .line 3823
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v7, 0x1

    if-ne p2, v7, :cond_0

    .line 3824
    const/4 v3, 0x1

    .line 3825
    :cond_0
    const/4 v7, 0x1

    if-ne p3, v7, :cond_1

    .line 3826
    const/4 v0, 0x1

    .line 3828
    :cond_1
    if-eqz v3, :cond_5

    .line 3829
    const/4 v5, 0x1

    .line 3830
    const/4 v4, 0x0

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .local v4, "i":I
    :goto_0
    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v4, v7, :cond_5

    .line 3831
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3833
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v7

    .line 3832
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3834
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 3835
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3837
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 3838
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 3840
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    if-nez v1, :cond_3

    .line 3841
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "ERROR!!!! device is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    return-void

    .line 3848
    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 3850
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    .line 3849
    const/4 v8, 0x4

    invoke-direct {p0, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B[B)Z

    .line 3830
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3864
    .end local v4    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 3865
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3866
    .local v6, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3867
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 3868
    .local v2, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3869
    const/4 v5, 0x0

    .line 3870
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerAvailablility()Z

    move-result v7

    if-eq v7, v0, :cond_7

    .line 3871
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerAvailablility(Z)V

    .line 3875
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_7

    .line 3878
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3879
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3878
    const/16 v9, 0xc9

    .line 3879
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3878
    invoke-virtual {v7, v9, v10, v11, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3882
    :cond_7
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v7

    if-eq v7, v3, :cond_8

    .line 3883
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerFocus(Z)V

    .line 3886
    if-eqz v3, :cond_8

    .line 3887
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_8

    .line 3891
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3892
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3891
    const/16 v10, 0xca

    .line 3892
    const/4 v11, 0x0

    .line 3891
    invoke-virtual {v7, v10, v8, v11, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3904
    .end local v2    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v6    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_8
    if-eqz v3, :cond_a

    .line 3906
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 3907
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3908
    .restart local v6    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3909
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 3910
    .restart local v2    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3914
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerFocus(Z)V

    goto :goto_1

    .line 3920
    .end local v2    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v6    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_a
    if-eqz v5, :cond_c

    .line 3921
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v4, v7, :cond_c

    .line 3922
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_b

    .line 3925
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3926
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3925
    const/16 v9, 0xca

    .line 3926
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3925
    invoke-virtual {v7, v9, v10, v11, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3921
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3817
    .end local v4    # "i":I
    :cond_c
    return-void
.end method

.method private processRegisterNotification(IILjava/lang/String;)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "param"    # I
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3934
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 3935
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 3936
    .local v1, "deviceIndex":I
    const-string/jumbo v3, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processRegisterNotification: eventId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    .line 3938
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v6, "device entry not present, bailing out"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    return-void

    .line 3941
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4016
    :pswitch_0
    const-string/jumbo v3, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processRegisterNotification: Unhandled Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    :goto_0
    return-void

    .line 3943
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 3946
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 3948
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v6

    .line 3947
    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v6

    .line 3949
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v1

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    .line 3945
    invoke-direct {p0, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative(II[B)Z

    goto :goto_0

    .line 3953
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set24(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 3955
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 3959
    :pswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    .line 3960
    .local v4, "songPosition":J
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 3961
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    int-to-long v6, p2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J

    .line 3962
    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v8, -0x7fe688e67fe67d00L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 3963
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    .line 3964
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v6

    .line 3963
    add-long/2addr v6, v4

    invoke-static {v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J

    .line 3965
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    .line 3966
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v6

    .line 3965
    sub-long v6, v4, v6

    invoke-static {v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J

    .line 3967
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 3968
    const/4 v6, 0x3

    .line 3967
    if-ne v3, v6, :cond_1

    .line 3969
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3970
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 3969
    const/4 v7, 0x5

    invoke-virtual {v3, v7, v10, v10, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3971
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3972
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v6

    .line 3971
    invoke-virtual {v3, v2, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3975
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 3976
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    long-to-int v6, v6

    .line 3977
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v1

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    .line 3975
    invoke-direct {p0, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    goto/16 :goto_0

    .line 3985
    .end local v4    # "songPosition":J
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 3986
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->sendPlayerAppChangedRsp(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 3994
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 3996
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 3997
    iget v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    .line 3998
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v7, v7, v1

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    .line 3995
    invoke-direct {p0, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAddressedPlayerChangedNative(II[B)Z

    goto/16 :goto_0

    .line 4002
    :pswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4004
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 4005
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 4003
    invoke-direct {p0, v3, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAvailablePlayersChangedNative(I[B)Z

    goto/16 :goto_0

    .line 4009
    :pswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4011
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 4012
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 4010
    invoke-direct {p0, v3, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspNowPlayingContentChangedNative(I[B)Z

    goto/16 :goto_0

    .line 3941
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private processSetAddressedPlayer(ILjava/lang/String;)V
    .locals 12
    .param p1, "playerId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2862
    const/4 v6, 0x0

    .line 2863
    .local v6, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2864
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2865
    .local v1, "deviceIndex":I
    const/16 v8, 0xff

    if-ne v1, v8, :cond_0

    .line 2866
    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "device entry not present, bailing out"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    return-void

    .line 2869
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v8, v8, v1

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2874
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 2873
    const/16 v9, 0x13

    invoke-direct {p0, v9, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B[B)Z

    .line 2875
    return-void

    .line 2877
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2878
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2879
    .end local v6    # "packageName":Ljava/lang/String;
    .local v7, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2880
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 2881
    .local v2, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v8

    if-ne v8, p1, :cond_2

    .line 2882
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 2886
    .end local v2    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_3
    if-eqz v6, :cond_5

    .line 2887
    iget v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    if-ne p1, v8, :cond_4

    .line 2891
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 2890
    const/4 v9, 0x4

    invoke-direct {p0, v9, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B[B)Z

    .line 2892
    return-void

    .line 2894
    :cond_4
    const-string/jumbo v8, "com.android"

    const-string/jumbo v9, "org.codeaurora"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2895
    .local v5, "newPackageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".setaddressedplayer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v3, "mediaIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2898
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2902
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v8, v8, v1

    invoke-static {v8, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2903
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 2904
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v10, v10, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2906
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2907
    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Post MESSAGE_SET_ADDR_PLAYER_REQ_TIMEOUT"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    .end local v3    # "mediaIntent":Landroid/content/Intent;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "newPackageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2912
    :cond_5
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 2911
    const/16 v9, 0x11

    invoke-direct {p0, v9, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B[B)Z

    goto :goto_1
.end method

.method private processSetBrowsedPlayer(ILjava/lang/String;)V
    .locals 13
    .param p1, "playerId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2090
    const/4 v11, 0x0

    .line 2091
    .local v11, "packageName":Ljava/lang/String;
    const/16 v1, 0x11

    .line 2092
    .local v1, "retError":B
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 2093
    .local v8, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 2094
    .local v9, "deviceIndex":I
    const/16 v0, 0xff

    if-ne v9, v0, :cond_0

    .line 2095
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v2, "device entry not present, bailing out"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    return-void

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    const-string/jumbo v3, "invalid"

    invoke-static {v0, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2100
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2101
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    invoke-static {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 2104
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2105
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2106
    .end local v11    # "packageName":Ljava/lang/String;
    .local v12, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2107
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 2108
    .local v10, "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2109
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerAvailablility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2112
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->IsPlayerBrowsable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2113
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->IsPlayerBrowsableWhenAddressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2114
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2115
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v11

    .local v11, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 2122
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x13

    goto :goto_0

    .line 2125
    :cond_3
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 2128
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x12

    goto :goto_0

    .line 2134
    .end local v10    # "di":Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
    .end local v12    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;>;"
    :cond_5
    if-eqz v11, :cond_6

    .line 2135
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0}, Landroid/media/RemoteController;->setRemoteControlClientBrowsedPlayer()V

    .line 2136
    iput-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2089
    :goto_1
    return-void

    .line 2142
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2140
    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative(BIIII[Ljava/lang/String;[B)Z

    goto :goto_1
.end method

.method private registerMediaPlayers()V
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x7

    const/4 v7, 0x5

    .line 610
    const/16 v0, 0x10

    new-array v11, v0, [I

    .local v11, "featureMasks":[I
    fill-array-data v11, :array_0

    .line 613
    new-array v8, v7, [B

    .local v8, "playerName1":[B
    fill-array-data v8, :array_1

    .line 616
    aget v0, v11, v7

    or-int/lit8 v0, v0, 0x1

    .line 615
    aput v0, v11, v7

    .line 618
    aget v0, v11, v7

    or-int/lit8 v0, v0, 0x4

    .line 617
    aput v0, v11, v7

    .line 620
    aget v0, v11, v7

    or-int/lit8 v0, v0, 0x2

    .line 619
    aput v0, v11, v7

    .line 622
    aget v0, v11, v3

    or-int/lit8 v0, v0, 0x4

    .line 621
    aput v0, v11, v3

    .line 624
    aget v0, v11, v3

    or-int/lit8 v0, v0, 0x8

    .line 623
    aput v0, v11, v3

    .line 626
    aget v0, v11, v7

    or-int/lit8 v0, v0, 0x10

    .line 625
    aput v0, v11, v7

    .line 628
    aget v0, v11, v7

    or-int/lit8 v0, v0, 0x20

    .line 627
    aput v0, v11, v7

    .line 630
    aget v0, v11, v1

    or-int/lit8 v0, v0, 0x1

    .line 629
    aput v0, v11, v1

    .line 632
    aget v0, v11, v1

    or-int/lit8 v0, v0, 0x4

    .line 631
    aput v0, v11, v1

    .line 634
    aget v0, v11, v1

    or-int/lit8 v0, v0, 0x8

    .line 633
    aput v0, v11, v1

    .line 636
    aget v0, v11, v4

    or-int/lit8 v0, v0, 0x2

    .line 635
    aput v0, v11, v4

    .line 638
    aget v0, v11, v1

    or-int/lit16 v0, v0, 0x80

    .line 637
    aput v0, v11, v1

    .line 640
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 647
    const-string/jumbo v9, "com.android.music"

    .line 642
    const/4 v4, 0x0

    .line 643
    const/4 v5, 0x2

    .line 644
    const/16 v6, 0x6a

    move-object v1, p0

    move v3, v2

    move v10, v2

    .line 640
    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;Z[I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mediaPlayerInfo1:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    .line 651
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mediaPlayerInfo1:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    return-void

    .line 610
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 613
    :array_1
    .array-data 1
        0x4dt
        0x75t
        0x73t
        0x69t
        0x63t
    .end array-data
.end method

.method private registerNotification(II[B)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "param"    # I
    .param p3, "address"    # [B

    .prologue
    .line 3812
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 3813
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 3812
    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3814
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3811
    return-void
.end method

.method private native registerNotificationPlayerAppRspNative(IB[B[B)Z
.end method

.method private native registerNotificationRspAddressedPlayerChangedNative(II[B)Z
.end method

.method private native registerNotificationRspAvailablePlayersChangedNative(I[B)Z
.end method

.method private native registerNotificationRspNowPlayingContentChangedNative(I[B)Z
.end method

.method private native registerNotificationRspPlayPosNative(II[B)Z
.end method

.method private native registerNotificationRspPlayStatusNative(II[B)Z
.end method

.method private native registerNotificationRspTrackChangeNative(I[B[B)Z
.end method

.method private resetAndSendPlayerStatusReject()V
    .locals 1

    .prologue
    .line 1763
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->updateResetNotification(I)V

    .line 1764
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->updateResetNotification(I)V

    .line 1765
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->updateResetNotification(I)V

    .line 1766
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->updateResetNotification(I)V

    .line 1760
    return-void
.end method

.method private rewind(ILjava/lang/String;)V
    .locals 6
    .param p1, "keyState"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2165
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2166
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2167
    .local v1, "deviceIndex":I
    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    .line 2168
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "invalid index for device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    return-void

    .line 2171
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 2172
    if-nez p1, :cond_1

    .line 2173
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Ignore key release event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_0
    return-void

    .line 2175
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, p1, v5, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2177
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2178
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v1

    invoke-static {v3, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    goto :goto_0
.end method

.method private sendAdjustVolume(I)V
    .locals 11
    .param p1, "val"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1382
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in sendAdjustVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v3, :cond_3

    .line 1384
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1385
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 1387
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-eq v3, v9, :cond_2

    .line 1388
    if-eq p1, v9, :cond_0

    if-ne p1, v10, :cond_2

    .line 1390
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 1391
    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    mul-int/2addr v4, p1

    .line 1390
    add-int/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1389
    const/16 v4, 0x7f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1393
    .local v2, "setVol":I
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 1392
    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I[B)Z

    move-result v1

    .line 1394
    .local v1, "isSetVol":Z
    if-eqz v1, :cond_1

    .line 1395
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 1396
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 1395
    const/16 v6, 0x9

    invoke-virtual {v4, v6, v8, v8, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1397
    const-wide/16 v6, 0x7d0

    .line 1395
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1398
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1399
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1400
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1383
    .end local v1    # "isSetVol":Z
    .end local v2    # "setVol":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    :cond_2
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1381
    :cond_3
    return-void
.end method

.method private sendPlayerAppChangedRsp(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "rsptype"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4066
    const/4 v0, 0x4

    .line 4067
    .local v0, "i":B
    const/4 v4, 0x4

    new-array v3, v4, [B

    .line 4065
    .local v3, "retVal":[B
    const/4 v4, 0x0

    .line 4068
    const/4 v1, 0x1

    .local v1, "j":I
    const/4 v5, 0x2

    aput-byte v5, v3, v4

    .line 4069
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->repeat_value:B

    aput-byte v4, v3, v1

    .line 4070
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    const/4 v4, 0x3

    aput-byte v4, v3, v2

    .line 4071
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->shuffle_value:B

    aput-byte v4, v3, v1

    .line 4074
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 4072
    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationPlayerAppRspNative(IB[B[B)Z

    .line 4064
    return-void
.end method

.method private sendSetAbsoluteVolume(I)V
    .locals 7
    .param p1, "val"    # I

    .prologue
    const/4 v6, 0x0

    .line 1410
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in sendSetAbsoluteVolume  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_1

    .line 1412
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1413
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1415
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in sending for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1416
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I[B)Z

    move-result v1

    .line 1418
    .local v1, "isSetVol":Z
    if-eqz v1, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 1420
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1419
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1421
    const-wide/16 v4, 0x7d0

    .line 1419
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1422
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 1423
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1411
    .end local v1    # "isSetVol":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1409
    :cond_1
    return-void
.end method

.method private native sendSettingsTextRspNative(I[BI[Ljava/lang/String;[B)Z
.end method

.method private sendTrackChangedRsp(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v8, 0x8

    .line 4047
    new-array v4, v8, [B

    .line 4048
    .local v4, "track":[B
    const-wide/16 v0, -0x1

    .line 4049
    .local v0, "TrackNumberRsp":J
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 4053
    .local v2, "deviceIndex":I
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v0

    .line 4056
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4057
    mul-int/lit8 v5, v3, 0x8

    rsub-int/lit8 v5, v5, 0x38

    shr-long v6, v0, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 4056
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4059
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 4060
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 4059
    invoke-direct {p0, v5, v4, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspTrackChangeNative(I[B[B)Z

    .line 4046
    return-void
.end method

.method private native sendValueTextRspNative(I[BI[Ljava/lang/String;[B)Z
.end method

.method private setAddressedPlayer(I[B)V
    .locals 5
    .param p1, "playerId"    # I
    .param p2, "address"    # [B

    .prologue
    .line 2854
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 2855
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2854
    const/16 v3, 0x7d2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2856
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2851
    return-void
.end method

.method private native setAdressedPlayerRspNative(B[B)Z
.end method

.method private setBrowsedPlayer(I[B)V
    .locals 5
    .param p1, "playerId"    # I
    .param p2, "address"    # [B

    .prologue
    .line 2084
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 2085
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 2084
    const/16 v3, 0x7d4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2086
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2081
    return-void
.end method

.method private native setBrowsedPlayerRspNative(BIIII[Ljava/lang/String;[B)Z
.end method

.method private setPlayerAppSetting(B[B[B[B)V
    .locals 8
    .param p1, "num"    # B
    .param p2, "attr_id"    # [B
    .param p3, "attr_val"    # [B
    .param p4, "address"    # [B

    .prologue
    .line 4473
    mul-int/lit8 v5, p1, 0x2

    new-array v0, v5, [B

    .line 4474
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 4476
    aget-byte v5, p2, v2

    aput-byte v5, v0, v2

    .line 4477
    add-int/lit8 v5, v2, 0x1

    aget-byte v6, p3, v2

    aput-byte v6, v0, v5

    .line 4478
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    aget-byte v7, p2, v2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4480
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "org.codeaurora.music.playersettingsrequest"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4481
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "command"

    const-string/jumbo v6, "set"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4482
    const-string/jumbo v5, "AttribValuePairs"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4483
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4485
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4486
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    .line 4485
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 4487
    .local v1, "deviceIndex":I
    const/16 v5, 0xff

    if-ne v1, v5, :cond_1

    .line 4488
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "invalid index for device"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    return-void

    .line 4492
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4494
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 4495
    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0x25a

    iput v5, v4, Landroid/os/Message;->what:I

    .line 4496
    const/4 v5, 0x6

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 4497
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 4498
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4499
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    iget v7, v4, Landroid/os/Message;->arg1:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4500
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4469
    return-void
.end method

.method private native setVolumeNative(I[B)Z
.end method

.method private start()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 416
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "BluetoothAvrcpHandler"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 417
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 418
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 419
    .local v3, "looper":Landroid/os/Looper;
    new-instance v5, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v5, p0, v3, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 420
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingSetAttributes:Ljava/util/ArrayList;

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v1, v5, :cond_0

    .line 424
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    const-string/jumbo v6, "invalid"

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    invoke-static {v5, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v5, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->registerMediaPlayers()V

    .line 437
    new-instance v5, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;-><init>(Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    .line 438
    new-instance v5, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;-><init>(Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;

    .line 439
    new-instance v5, Landroid/media/RemoteController;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    .line 440
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpRemoteControllerWeak;

    .line 439
    invoke-direct {v5, v6, v7, v9, v8}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;Landroid/media/RemoteController$OnClientAvrcpUpdateListener;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    .line 441
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 442
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 413
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Unable to register Avrcp receiver"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateA2dpAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1430
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 1432
    .local v1, "isPlaying":Z
    :goto_0
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "updateA2dpAudioState"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1438
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_1

    .line 1439
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isPlayingState(I)Z

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1440
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1439
    if-eqz v2, :cond_5

    .line 1441
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    .line 1443
    :goto_2
    const-wide/16 v4, -0x1

    .line 1441
    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState(IJLandroid/bluetooth/BluetoothDevice;)V

    .line 1429
    :cond_1
    return-void

    .line 1430
    .end local v0    # "i":I
    .end local v1    # "isPlaying":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isPlaying":Z
    goto :goto_0

    .line 1435
    :cond_3
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "updateA2dpAudioState: Stream state not active "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return-void

    .line 1442
    .restart local v0    # "i":I
    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    .line 1438
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateAddressedMediaPlayer(I)V
    .locals 5
    .param p1, "playerId"    # I

    .prologue
    .line 1655
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "updateAddressedMediaPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current Player: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested Player: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_1

    .line 1661
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1663
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    if-eq v2, p1, :cond_0

    .line 1666
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    .line 1667
    .local v1, "previousAddressedPlayerId":I
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1669
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 1670
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 1668
    invoke-direct {p0, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAddressedPlayerChangedNative(II[B)Z

    .line 1671
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1672
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->resetAndSendPlayerStatusReject()V

    .line 1660
    .end local v1    # "previousAddressedPlayerId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1679
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    .line 1654
    return-void
.end method

.method private updateAvailableMediaPlayers()V
    .locals 3

    .prologue
    .line 1642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 1643
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1645
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1649
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    .line 1650
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1648
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAvailablePlayersChangedNative(I[B)Z

    .line 1642
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1637
    :cond_1
    return-void
.end method

.method private updateLocalPlayerSettings([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 4319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4321
    aget-byte v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 4319
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4323
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->eq_value:B

    goto :goto_1

    .line 4326
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->repeat_value:B

    goto :goto_1

    .line 4329
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->shuffle_value:B

    goto :goto_1

    .line 4332
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->settingValues:Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->scan_value:B

    goto :goto_1

    .line 4317
    :cond_0
    return-void

    .line 4321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 10
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1999
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2000
    .local v1, "oldMetadata":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2001
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v4}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2002
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {p1, v6, v4}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2003
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v4}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 2004
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v8, v9}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    .line 2005
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {p1, v5, v8, v9}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    .line 2007
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old Metadata = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new MetaData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2011
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new mMetadata, mTrackNumber update to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_1

    .line 2013
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2014
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set24(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 2016
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending track change for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp(Landroid/bluetooth/BluetoothDevice;)V

    .line 2012
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2020
    :cond_1
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 2021
    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 2022
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_2

    .line 2023
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2024
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 2026
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "updated mPlayStartTimeMs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 2033
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_5

    .line 2034
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mCurrentPlayState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2036
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 2038
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending play pos change for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 2040
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 2041
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 2042
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 2040
    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    .line 2043
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 2033
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2022
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2050
    .end local v0    # "i":I
    :cond_5
    const/16 v2, 0x9

    .line 2051
    const-wide/16 v4, -0x1

    .line 2050
    invoke-virtual {p1, v2, v4, v5}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    .line 1995
    return-void
.end method

.method private updatePlayPauseState(IJLandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1470
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlayPauseState, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v1, v2, :cond_1

    .line 1472
    const-string/jumbo v3, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1473
    const-string/jumbo v2, "no name: "

    .line 1472
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1474
    const-string/jumbo v5, " : old state: "

    .line 1473
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1474
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1473
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1476
    :cond_1
    if-nez p4, :cond_2

    .line 1478
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayerStateAndPosition(IJ)V

    .line 1479
    return-void

    .line 1481
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1482
    .local v0, "deviceIndex":I
    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    .line 1483
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "invalid device indexPlay status change for not connected device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :goto_2
    return-void

    .line 1486
    :cond_3
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1487
    const-string/jumbo v4, " new state: "

    .line 1486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1487
    const-string/jumbo v4, " device: "

    .line 1486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1488
    const-string/jumbo v4, " index: "

    .line 1486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayStatusForDevice(II)V

    goto :goto_2
.end method

.method private updatePlayStatusForDevice(II)V
    .locals 5
    .param p1, "deviceIndex"    # I
    .param p2, "state"    # I

    .prologue
    .line 1495
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlayStatusForDevice: device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1496
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1495
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 1497
    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v1

    .line 1499
    .local v1, "oldPlayStatus":I
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    .line 1505
    .local v0, "newPlayStatus":I
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    invoke-static {v2, p2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1507
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1508
    if-eq v1, v0, :cond_0

    .line 1509
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1511
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 1513
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 1510
    invoke-direct {p0, v2, v0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative(II[B)Z

    .line 1494
    :cond_0
    return-void
.end method

.method private updatePlayerStateAndPosition(IJ)V
    .locals 18
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J

    .prologue
    .line 1520
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 1521
    const-wide v14, -0x7fe688e67fe67d00L

    .line 1520
    cmp-long v12, v12, v14

    if-eqz v12, :cond_9

    const/4 v9, 0x1

    .line 1524
    .local v9, "oldPosValid":Z
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v8

    .line 1525
    .local v8, "oldPlayStatus":I
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v6

    .line 1527
    .local v6, "newPlayStatus":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 1528
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    move/from16 v0, p1

    if-eq v12, v0, :cond_0

    .line 1527
    if-eqz v9, :cond_0

    .line 1529
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 1530
    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Update mCurrentPosMs to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    move/from16 v0, p1

    if-eq v12, v0, :cond_1

    .line 1534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 1535
    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Update mPlayStartTimeMs to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    .line 1540
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    const/4 v13, 0x3

    if-ne v13, v12, :cond_2

    .line 1541
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    cmp-long v12, v12, p2

    if-eqz v12, :cond_3

    .line 1542
    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, p2, v12

    if-eqz v12, :cond_3

    .line 1543
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 1544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 1545
    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Update mPlayStartTimeMs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1546
    const-string/jumbo v14, " mCurrentPosMs: "

    .line 1545
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1546
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 1545
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 1551
    const-wide v14, -0x7fe688e67fe67d00L

    .line 1550
    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    const/4 v7, 0x1

    .line 1552
    .local v7, "newPosValid":Z
    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v10

    .line 1553
    .local v10, "playPosition":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1554
    const/4 v4, 0x0

    .local v4, "deviceIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v4, v12, :cond_c

    .line 1555
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1556
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v12

    if-nez v12, :cond_5

    .line 1557
    if-ne v8, v6, :cond_4

    if-eq v9, v7, :cond_b

    .line 1560
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v12

    .line 1562
    long-to-int v13, v10

    .line 1563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v14, v14, v4

    invoke-static {v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    .line 1561
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    .line 1565
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v12

    if-nez v12, :cond_6

    if-eqz v7, :cond_6

    .line 1568
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 1569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 1570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v13, v13, v4

    invoke-static {v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 1569
    const/4 v14, 0x5

    .line 1570
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1569
    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1571
    .local v5, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v13, v13, v4

    invoke-static {v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v5, v14, v15}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1575
    .end local v5    # "msg":Landroid/os/Message;
    :cond_6
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    .line 1576
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->isPlayStateToBeUpdated(I)Z

    move-result v12

    .line 1575
    if-eqz v12, :cond_8

    .line 1577
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayStatusForDevice(II)V

    .line 1554
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1520
    .end local v4    # "deviceIndex":I
    .end local v6    # "newPlayStatus":I
    .end local v7    # "newPosValid":Z
    .end local v8    # "oldPlayStatus":I
    .end local v9    # "oldPosValid":Z
    .end local v10    # "playPosition":J
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "oldPosValid":Z
    goto/16 :goto_0

    .line 1550
    .restart local v6    # "newPlayStatus":I
    .restart local v8    # "oldPlayStatus":I
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "newPosValid":Z
    goto/16 :goto_1

    .line 1558
    .restart local v4    # "deviceIndex":I
    .restart local v10    # "playPosition":J
    :cond_b
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    .line 1559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v12, v12, v4

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gtz v12, :cond_5

    goto/16 :goto_3

    .line 1517
    :cond_c
    return-void
.end method

.method private updateResetNotificationForDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 1451
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in updateResetNotificationForDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p2

    .line 1458
    const/4 v1, 0x2

    .line 1457
    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1459
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v0

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, -0x1

    .line 1459
    invoke-direct {p0, v0, v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    .line 1461
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 1450
    :goto_0
    return-void

    .line 1463
    :cond_0
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, p2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTransportControls(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 1634
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    .line 1633
    return-void
.end method

.method private volumeChangeCallback(II[B)V
    .locals 4
    .param p1, "volume"    # I
    .param p2, "ctype"    # I
    .param p3, "address"    # [B

    .prologue
    .line 4297
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 4298
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 4297
    const/4 v3, 0x6

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4299
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4296
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 4277
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4278
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4276
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanupNative()V

    .line 700
    return-void
.end method

.method public cleanupDeviceFeaturesIndex(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4627
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanupDeviceFeaturesIndex index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4629
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4630
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4631
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set21(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4632
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set24(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4633
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;J)J

    .line 4634
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4635
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4636
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set5(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4637
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4638
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4639
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set25(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4640
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4641
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4642
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4643
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set7(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4644
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4645
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 4646
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    const-string/jumbo v1, "invalid"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 4647
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 4648
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;

    .line 4649
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4650
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set1(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4651
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, p1

    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Z)Z

    .line 4626
    return-void
.end method

.method public clearDeviceDependentFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 692
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    const-string/jumbo v2, "invalid"

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;

    .line 694
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    return-void
.end method

.method public doQuit()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xe

    .line 666
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 668
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 671
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->clearDeviceDependentFeature()V

    .line 673
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v1, v3, :cond_1

    .line 674
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanupDeviceFeaturesIndex(I)V

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 683
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 663
    :cond_2
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Unable to unregister Avrcp receiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 4709
    const-string/jumbo v1, "AVRCP:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_0

    .line 4711
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransportControlFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentPlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPlayStatusChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTrackChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTrackNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentPosMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPlayStartTimeMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSongLengthMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPlaybackIntervalMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPlayPosChangedNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNextPosMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get14(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPrevPosMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get20(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSkipStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFeatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAbsoluteVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastSetVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get12(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVolumeStep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAudioStreamMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVolCmdInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get23(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAbsVolRetryTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get2(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSkipAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4710
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4708
    :cond_0
    return-void
.end method

.method public isAbsoluteVolumeSupported()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4255
    .local v0, "absVolumeSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v1, v4, :cond_2

    .line 4256
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4259
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4261
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAbsoluteVolumeSupported: yes, for dev: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4255
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4264
    :cond_1
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAbsoluteVolumeSupported: no, for dev: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4269
    :cond_2
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public isAvrcpConnected()Z
    .locals 5

    .prologue
    .line 4603
    const/4 v1, 0x0

    .line 4604
    .local v1, "ret":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v2, :cond_0

    .line 4605
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4606
    const/4 v1, 0x1

    .line 4610
    :cond_0
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAvrcpConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    return v1

    .line 4604
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setA2dpAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4573
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xd

    .line 4574
    const/4 v3, 0x0

    .line 4573
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4575
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4572
    return-void
.end method

.method public setAbsoluteVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    const/4 v4, 0x0

    .line 4282
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v0

    .line 4283
    .local v0, "avrcpVolume":I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4284
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 4285
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4286
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4281
    return-void
.end method

.method public setAvrcpConnectedDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 4579
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device added is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 4581
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4582
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4581
    if-eqz v1, :cond_0

    .line 4583
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "device is already added in connected list, ignore now"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    return-void

    .line 4580
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4587
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_2

    .line 4588
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4589
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4593
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set11(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 4594
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play status updated on Avrcp connection as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4595
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayerState:I

    .line 4594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device added at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    :cond_2
    return-void

    .line 4587
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAvrcpDisconnectedDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 4657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_0

    .line 4658
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4659
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4658
    if-eqz v1, :cond_2

    .line 4661
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device removed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set8(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4664
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanupDeviceFeaturesIndex(I)V

    .line 4667
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 4668
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4667
    if-eqz v1, :cond_0

    .line 4669
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "clearing mBrowserDevice on disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4675
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 4676
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v3

    .line 4675
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 4677
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " update audio manager for abs vol state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4678
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v3

    .line 4677
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4679
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 4680
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4681
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4682
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4683
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    .line 4684
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 4683
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(ILandroid/bluetooth/BluetoothDevice;)V

    .line 4685
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " update audio manager for abs vol  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4686
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 4685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    :cond_1
    return-void

    .line 4657
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4679
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method updateBrowsedPlayerFolder(II[Ljava/lang/String;)V
    .locals 11
    .param p1, "numOfItems"    # I
    .param p2, "status"    # I
    .param p3, "folderNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1770
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBrowsedPlayerFolder: numOfItems =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1771
    const-string/jumbo v3, " status = "

    .line 1770
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 1773
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "mBrowserDevice is null for music player called api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1776
    .local v8, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 1777
    .local v9, "deviceIndex":I
    const/16 v0, 0xff

    if-ne v9, v0, :cond_1

    .line 1778
    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "invalid index for device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    const-string/jumbo v1, "root"

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set9(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    invoke-static {v0, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set10(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 1783
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v0, v0, v9

    sget-object v1, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaUriStatic:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1784
    sput-object v10, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaUriStatic:Landroid/net/Uri;

    .line 1786
    int-to-byte v1, p2

    const/16 v5, 0x6a

    .line 1787
    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    move-object v0, p0

    move v3, p1

    move v4, v2

    move-object v6, p3

    .line 1786
    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative(BIIII[Ljava/lang/String;[B)Z

    .line 1788
    iput-object v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1769
    return-void
.end method

.method updateNowPlayingContentChanged()V
    .locals 3

    .prologue
    .line 1792
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "updateNowPlayingContentChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v1, :cond_1

    .line 1794
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1796
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Notify peer on updateNowPlayingContentChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1799
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v1

    .line 1800
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 1798
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspNowPlayingContentChangedNative(I[B)Z

    .line 1793
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1791
    :cond_1
    return-void
.end method

.method updateNowPlayingEntriesReceived([J)V
    .locals 37
    .param p1, "playList"    # [J

    .prologue
    .line 1825
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "updateNowPlayingEntriesReceived called"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/16 v33, 0x4

    .line 1828
    .local v33, "status":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mEnd:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v6, v6, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long v34, v4, v6

    .line 1829
    .local v34, "reqItems":J
    const-wide/16 v24, 0x0

    .line 1830
    .local v24, "availableItems":J
    const/16 v27, 0x0

    .line 1831
    .local v27, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x3

    new-array v8, v4, [I

    .line 1832
    .local v8, "itemType":[I
    const/4 v4, 0x3

    new-array v9, v4, [J

    .line 1833
    .local v9, "uid":[J
    const/4 v4, 0x3

    new-array v10, v4, [I

    .line 1834
    .local v10, "type":[I
    const/4 v4, 0x3

    new-array v11, v4, [B

    .line 1835
    .local v11, "playable":[B
    const/4 v4, 0x3

    new-array v12, v4, [Ljava/lang/String;

    .line 1836
    .local v12, "displayName":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v13, v4, [B

    .line 1837
    .local v13, "numAtt":[B
    const/16 v4, 0x15

    new-array v14, v4, [Ljava/lang/String;

    .line 1838
    .local v14, "attValues":[Ljava/lang/String;
    const/16 v4, 0x15

    new-array v15, v4, [I

    .line 1840
    .local v15, "attIds":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_0

    .line 1841
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "mBrowserDevice is null for music app called API"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v28, v0

    .line 1844
    .local v28, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->getIndexForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v29

    .line 1845
    .local v29, "deviceIndex":I
    const/16 v4, 0xff

    move/from16 v0, v29

    if-ne v0, v4, :cond_1

    .line 1846
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "invalid device index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void

    .line 1850
    :cond_1
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "updateNowPlayingEntriesReceived"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/16 v26, 0x0

    .local v26, "count":I
    :goto_0
    const/16 v4, 0x15

    move/from16 v0, v26

    if-ge v0, v4, :cond_2

    .line 1854
    const-string/jumbo v4, ""

    aput-object v4, v14, v26

    .line 1855
    const/4 v4, 0x0

    aput v4, v15, v26

    .line 1853
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1858
    :cond_2
    move-object/from16 v0, p1

    array-length v4, v0

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 1859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v4, v4, v24

    if-lez v4, :cond_3

    .line 1860
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "startIteam exceeds the available item index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const-wide/16 v6, 0x0

    .line 1864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v29

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 1861
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 1865
    return-void

    .line 1868
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mEnd:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 1870
    :cond_4
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "wrong start / end index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const-wide/16 v6, 0x0

    .line 1874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v29

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 1871
    const/16 v5, 0xb

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 1875
    return-void

    .line 1869
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v6, v6, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mEnd:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    sub-long v24, v24, v4

    .line 1879
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v6, v6, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v6, v6, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mEnd:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "availableItems: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-wide/16 v4, 0x3

    cmp-long v4, v24, v4

    if-lez v4, :cond_6

    .line 1883
    const-wide/16 v24, 0x3

    .line 1884
    :cond_6
    cmp-long v4, v34, v24

    if-lez v4, :cond_7

    .line 1885
    move-wide/from16 v34, v24

    .line 1886
    :cond_7
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reqItems: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/16 v31, 0x0

    .end local v27    # "cursor":Landroid/database/Cursor;
    .local v31, "index":I
    :goto_1
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, v4, v34

    if-gez v4, :cond_d

    .line 1890
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v29

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get13(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is_music=1 AND _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-wide v6, v5, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    long-to-int v5, v6

    add-int v5, v5, v31

    aget-wide v6, p1, v5

    .line 1892
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1893
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1890
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1894
    .local v27, "cursor":Landroid/database/Cursor;
    if-eqz v27, :cond_a

    .line 1895
    const/16 v36, 0x0

    .line 1896
    .local v36, "validAttrib":I
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1897
    const/4 v4, 0x3

    aput v4, v8, v31

    .line 1898
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v9, v31

    .line 1899
    const/4 v4, 0x0

    aput v4, v10, v31

    .line 1900
    const/4 v4, 0x0

    aput-byte v4, v11, v31

    .line 1902
    const-string/jumbo v4, "title"

    .line 1901
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v31

    .line 1903
    const/16 v22, 0x0

    .local v22, "attIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-byte v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mAttrCnt:B

    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    .line 1904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCachedRequest:Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mAttrList:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1905
    .local v23, "attr":I
    const/4 v4, 0x7

    move/from16 v0, v23

    if-gt v0, v4, :cond_8

    const/4 v4, 0x1

    move/from16 v0, v23

    if-lt v0, v4, :cond_8

    .line 1906
    mul-int/lit8 v4, v31, 0x7

    add-int v4, v4, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeStringFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    .line 1908
    mul-int/lit8 v4, v31, 0x7

    add-int v4, v4, v22

    aput v23, v15, v4

    .line 1909
    add-int/lit8 v36, v36, 0x1

    .line 1903
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1912
    .end local v23    # "attr":I
    :cond_9
    move/from16 v0, v36

    int-to-byte v4, v0

    aput-byte v4, v13, v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    .end local v22    # "attIndex":I
    .end local v36    # "validAttrib":I
    :cond_a
    if-eqz v27, :cond_b

    .line 1922
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1888
    .end local v27    # "cursor":Landroid/database/Cursor;
    :cond_b
    :goto_3
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 1914
    :catch_0
    move-exception v30

    .line 1915
    .local v30, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-wide/16 v6, 0x0

    .line 1919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v29

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 1916
    const/4 v5, 0x3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    if-eqz v27, :cond_b

    .line 1922
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1920
    .end local v30    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1921
    if-eqz v27, :cond_c

    .line 1922
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1920
    :cond_c
    throw v4

    .line 1926
    :cond_d
    move/from16 v32, v31

    .line 1928
    .local v32, "numItems":I
    move/from16 v0, v32

    int-to-long v6, v0

    .line 1930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v29

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v16

    .line 1927
    const/4 v5, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative(BJ[I[J[I[B[Ljava/lang/String;[B[Ljava/lang/String;[I[B)Z

    .line 1931
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1824
    return-void
.end method

.method updatePlayItemResponse(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1806
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePlayItemResponse: success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1808
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    .line 1809
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "mBrowserDevice is null for music app called API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_0
    if-eqz p1, :cond_1

    .line 1815
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    .line 1814
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    .line 1821
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1805
    return-void

    .line 1819
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    .line 1818
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->playItemRspNative(I[B)Z

    goto :goto_0
.end method

.method public updateResetNotification(I)V
    .locals 9
    .param p1, "notificationType"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1683
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notificationType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->maxAvrcpConnections:I

    if-ge v0, v3, :cond_5

    .line 1685
    packed-switch p1, :pswitch_data_0

    .line 1755
    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Invalid Notification type "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1687
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1689
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set19(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1692
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 1694
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1691
    invoke-direct {p0, v3, v6, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative(II[B)Z

    goto :goto_1

    .line 1696
    :cond_0
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1697
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1696
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1701
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1705
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set18(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1708
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 1709
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    const/4 v5, -0x1

    .line 1707
    invoke-direct {p0, v3, v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II[B)Z

    .line 1710
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    goto/16 :goto_1

    .line 1712
    :cond_1
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1713
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get16(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1718
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1722
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set24(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1724
    new-array v2, v8, [B

    .line 1726
    .local v2, "track":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v8, :cond_2

    .line 1727
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    mul-int/lit8 v3, v1, 0x8

    rsub-int/lit8 v3, v3, 0x38

    shr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1726
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1730
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 1731
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1729
    invoke-direct {p0, v3, v2, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspTrackChangeNative(I[B[B)Z

    goto/16 :goto_1

    .line 1733
    .end local v1    # "j":I
    .end local v2    # "track":[B
    :cond_3
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1734
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get22(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1739
    :pswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1743
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-set17(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;I)I

    .line 1746
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v3

    .line 1747
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get6(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    .line 1745
    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspNowPlayingContentChangedNative(I[B)Z

    goto/16 :goto_1

    .line 1749
    :cond_4
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1750
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->deviceFeatures:[Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;->-get15(Lcom/android/bluetooth/avrcp/Avrcp$DeviceDependentFeature;)I

    move-result v5

    .line 1749
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1682
    :cond_5
    return-void

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
