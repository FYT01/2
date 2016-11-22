.class public Lcom/android/mail/providers/UIProvider;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$SyncStatus;,
        Lcom/android/mail/providers/UIProvider$LastSyncResult;,
        Lcom/android/mail/providers/UIProvider$AccountCapabilities;,
        Lcom/android/mail/providers/UIProvider$AccountColumns;,
        Lcom/android/mail/providers/UIProvider$QuickResponseColumns;,
        Lcom/android/mail/providers/UIProvider$AccountCookieColumns;,
        Lcom/android/mail/providers/UIProvider$SearchQueryParameters;,
        Lcom/android/mail/providers/UIProvider$ConversationListQueryParameters;,
        Lcom/android/mail/providers/UIProvider$FolderType;,
        Lcom/android/mail/providers/UIProvider$FolderCapabilities;,
        Lcom/android/mail/providers/UIProvider$FolderColumns;,
        Lcom/android/mail/providers/UIProvider$ConversationSendingState;,
        Lcom/android/mail/providers/UIProvider$ConversationPriority;,
        Lcom/android/mail/providers/UIProvider$ConversationPersonalLevel;,
        Lcom/android/mail/providers/UIProvider$ConversationFlags;,
        Lcom/android/mail/providers/UIProvider$ConversationPhishing;,
        Lcom/android/mail/providers/UIProvider$ConversationColumns;,
        Lcom/android/mail/providers/UIProvider$ConversationCursorCommand;,
        Lcom/android/mail/providers/UIProvider$ConversationOperations;,
        Lcom/android/mail/providers/UIProvider$AccountCallMethods;,
        Lcom/android/mail/providers/UIProvider$SendOrSaveMethodParamKeys;,
        Lcom/android/mail/providers/UIProvider$DraftType;,
        Lcom/android/mail/providers/UIProvider$SpamWarningLevel;,
        Lcom/android/mail/providers/UIProvider$SpamWarningLinkType;,
        Lcom/android/mail/providers/UIProvider$CursorStatus;,
        Lcom/android/mail/providers/UIProvider$CursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$AccountCursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$MessageFlags;,
        Lcom/android/mail/providers/UIProvider$MessageColumns;,
        Lcom/android/mail/providers/UIProvider$SetCurrentAccountColumns;,
        Lcom/android/mail/providers/UIProvider$MessageOperations;,
        Lcom/android/mail/providers/UIProvider$AttachmentState;,
        Lcom/android/mail/providers/UIProvider$AttachmentDestination;,
        Lcom/android/mail/providers/UIProvider$AttachmentColumns;,
        Lcom/android/mail/providers/UIProvider$AttachmentContentValueKeys;,
        Lcom/android/mail/providers/UIProvider$AttachmentRendition;,
        Lcom/android/mail/providers/UIProvider$AttachmentType;,
        Lcom/android/mail/providers/UIProvider$AutoAdvance;,
        Lcom/android/mail/providers/UIProvider$Swipe;,
        Lcom/android/mail/providers/UIProvider$ConversationViewMode;,
        Lcom/android/mail/providers/UIProvider$SnapHeaderValue;,
        Lcom/android/mail/providers/UIProvider$DefaultReplyBehavior;,
        Lcom/android/mail/providers/UIProvider$ConversationListIcon;,
        Lcom/android/mail/providers/UIProvider$UpdateNotificationExtras;,
        Lcom/android/mail/providers/UIProvider$EditSettingsExtras;,
        Lcom/android/mail/providers/UIProvider$SendFeedbackExtras;,
        Lcom/android/mail/providers/UIProvider$ViewProxyExtras;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_COLUMNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

.field public static final ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.account"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.account"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.android.mail.action.update_notification"

.field public static final ALLOW_HIDDEN_FOLDERS_QUERY_PARAM:Ljava/lang/String; = "allowHiddenFolders"

.field public static final ATTACHMENT_CONTENT_ID_COLUMN:I = 0xd

.field public static final ATTACHMENT_CONTENT_TYPE_COLUMN:I = 0x3

.field public static final ATTACHMENT_CONTENT_URI_COLUMN:I = 0x7

.field public static final ATTACHMENT_DESTINATION_COLUMN:I = 0x5

.field public static final ATTACHMENT_DOWNLOADED_SIZE_COLUMN:I = 0x6

.field public static final ATTACHMENT_FLAGS_COLUMN:I = 0xc

.field public static final ATTACHMENT_INFO_DELIMITER:Ljava/lang/String; = "|"

.field public static final ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_INFO_SEPARATOR:Ljava/lang/String; = "\n"

.field public static final ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_NAME_COLUMN:I = 0x0

.field public static final ATTACHMENT_PREVIEW_INTENT_COLUMN:I = 0x9

.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field public static final ATTACHMENT_SIZE_COLUMN:I = 0x1

.field public static final ATTACHMENT_STATE_COLUMN:I = 0x4

.field public static final ATTACHMENT_SUPPORTS_DOWNLOAD_AGAIN_COLUMN:I = 0xa

.field public static final ATTACHMENT_THUMBNAIL_URI_COLUMN:I = 0x8

.field public static final ATTACHMENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_TYPE_COLUMN:I = 0xb

.field public static final ATTACHMENT_URI_COLUMN:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mail.providers"

.field public static final AUTO_ADVANCE_MODE_LIST:Ljava/lang/String; = "list"

.field public static final AUTO_ADVANCE_MODE_NEWER:Ljava/lang/String; = "newer"

.field public static final AUTO_ADVANCE_MODE_OLDER:Ljava/lang/String; = "older"

.field public static final CONVERSATION_ACCOUNT_URI_COLUMN:I = 0x16

.field public static final CONVERSATION_BASE_URI_COLUMN:I = 0x18

.field public static final CONVERSATION_COLOR_COLUMN:I = 0x15

.field public static final CONVERSATION_DATE_RECEIVED_MS_COLUMN:I = 0x6

.field public static final CONVERSATION_FLAGS_COLUMN:I = 0x10

.field public static final CONVERSATION_HAS_ATTACHMENTS_COLUMN:I = 0x7

.field public static final CONVERSATION_ID_COLUMN:I = 0x0

.field public static final CONVERSATION_INFO_COLUMN:I = 0x5

.field public static final CONVERSATION_IS_PHISHING_COLUMN:I = 0x13

.field public static final CONVERSATION_IS_SPAM_COLUMN:I = 0x12

.field public static final CONVERSATION_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_MESSAGE_LIST_URI_COLUMN:I = 0x2

.field public static final CONVERSATION_MUTED_COLUMN:I = 0x14

.field public static final CONVERSATION_NUM_DRAFTS_COLUMN:I = 0x9

.field public static final CONVERSATION_NUM_MESSAGES_COLUMN:I = 0x8

.field public static final CONVERSATION_ORDER_KEY_COLUMN:I = 0x1a

.field public static final CONVERSATION_PERSONAL_LEVEL_COLUMN:I = 0x11

.field public static final CONVERSATION_PRIORITY_COLUMN:I = 0xb

.field public static final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final CONVERSATION_PROJECTION_QUERY_CURSOR_WINDOW_LIMIT:I = 0x5dc

.field public static final CONVERSATION_RAW_FOLDERS_COLUMN:I = 0xf

.field public static final CONVERSATION_READ_COLUMN:I = 0xc

.field public static final CONVERSATION_REMOTE_COLUMN:I = 0x19

.field public static final CONVERSATION_SEEN_COLUMN:I = 0xd

.field public static final CONVERSATION_SENDER_INFO_COLUMN:I = 0x17

.field public static final CONVERSATION_SENDING_STATE_COLUMN:I = 0xa

.field public static final CONVERSATION_SNIPPET_COLUMN:I = 0x4

.field public static final CONVERSATION_STARRED_COLUMN:I = 0xe

.field public static final CONVERSATION_SUBJECT_COLUMN:I = 0x3

.field public static final CONVERSATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_URI_COLUMN:I = 0x1

.field public static final DEFAULT_PARENT_QUERY_PARAMETER:Ljava/lang/String; = "defaultParent"

.field public static final EMAIL_SEPARATOR:Ljava/lang/String; = ","

.field public static final FOLDERS_PROJECTION:[Ljava/lang/String;

.field public static final FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

.field public static final FOLDER_BG_COLOR_COLUMN:I = 0x12

.field public static final FOLDER_CAPABILITIES_COLUMN:I = 0x5

.field public static final FOLDER_CHILD_FOLDERS_LIST_COLUMN:I = 0x8

.field public static final FOLDER_CONVERSATION_LIST_URI_COLUMN:I = 0x7

.field public static final FOLDER_FG_COLOR_COLUMN:I = 0x13

.field public static final FOLDER_HAS_CHILDREN_COLUMN:I = 0x4

.field public static final FOLDER_HIERARCHICAL_DESC_COLUMN:I = 0x15

.field public static final FOLDER_ICON_RES_ID_COLUMN:I = 0x10

.field public static final FOLDER_ID_COLUMN:I = 0x0

.field public static final FOLDER_LAST_MESSAGE_TIMESTAMP_COLUMN:I = 0x16

.field public static final FOLDER_LAST_SYNC_RESULT_COLUMN:I = 0xe

.field public static final FOLDER_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.folder"

.field public static final FOLDER_LOAD_MORE_URI_COLUMN:I = 0x14

.field public static final FOLDER_NAME_COLUMN:I = 0x3

.field public static final FOLDER_NOTIFICATION_ICON_RES_ID_COLUMN:I = 0x11

.field public static final FOLDER_PARENT_URI_COLUMN:I = 0x17

.field public static final FOLDER_PERSISTENT_ID_COLUMN:I = 0x1

.field public static final FOLDER_REFRESH_URI_COLUMN:I = 0xc

.field public static final FOLDER_SYNC_STATUS_COLUMN:I = 0xd

.field public static final FOLDER_SYNC_WINDOW_COLUMN:I = 0x6

.field public static final FOLDER_TOTAL_COUNT_COLUMN:I = 0xb

.field public static final FOLDER_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.folder"

.field public static final FOLDER_TYPE_COLUMN:I = 0xf

.field public static final FOLDER_UNREAD_COUNT_COLUMN:I = 0xa

.field public static final FOLDER_UNSEEN_COUNT_COLUMN:I = 0x9

.field public static final FOLDER_URI_COLUMN:I = 0x2

.field public static final FORCE_UI_NOTIFICATIONS_QUERY_PARAMETER:Ljava/lang/String; = "forceUiNotifications"

.field public static final INVALID_CONVERSATION_ID:J = -0x1L

.field public static final INVALID_MESSAGE_ID:J = -0x1L

.field public static final LABEL_QUERY_PARAMETER:Ljava/lang/String; = "label"

.field public static final LIST_PARAMS_QUERY_PARAMETER:Ljava/lang/String; = "listParams"

.field public static final MESSAGE_ACCOUNT_URI_COLUMN:I = 0x1d

.field public static final MESSAGE_ALWAYS_SHOW_IMAGES_COLUMN:I = 0x16

.field public static final MESSAGE_APPEND_REF_MESSAGE_CONTENT_COLUMN:I = 0x11

.field public static final MESSAGE_ATTACHMENTS_COLUMN:I = 0x1b

.field public static final MESSAGE_ATTACHMENT_BY_CID_URI_COLUMN:I = 0x14

.field public static final MESSAGE_ATTACHMENT_INFO_SEPARATOR:Ljava/lang/String; = "\n"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_ATTACHMENT_LIST_URI_COLUMN:I = 0x13

.field public static final MESSAGE_BCC_COLUMN:I = 0x9

.field public static final MESSAGE_BODY_HTML_COLUMN:I = 0xc

.field public static final MESSAGE_BODY_TEXT_COLUMN:I = 0xd

.field public static final MESSAGE_CC_COLUMN:I = 0x8

.field public static final MESSAGE_CLIPPED_COLUMN:I = 0x24

.field public static final MESSAGE_CONVERSATION_URI_COLUMN:I = 0x3

.field public static final MESSAGE_CUSTOM_FROM_ADDRESS_COLUMN:I = 0x1c

.field public static final MESSAGE_DATE_RECEIVED_MS_COLUMN:I = 0xb

.field public static final MESSAGE_DRAFT_TYPE_COLUMN:I = 0x10

.field public static final MESSAGE_EMBEDS_EXTERNAL_RESOURCES_COLUMN:I = 0xe

.field public static final MESSAGE_EVENT_INTENT_COLUMN:I = 0x1e

.field public static final MESSAGE_FLAGS_COLUMN:I = 0x15

.field public static final MESSAGE_FROM_COLUMN:I = 0x6

.field public static final MESSAGE_HAS_ATTACHMENTS_COLUMN:I = 0x12

.field public static final MESSAGE_ID_COLUMN:I = 0x0

.field public static final MESSAGE_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.message"

.field public static final MESSAGE_PERMALINK_COLUMN:I = 0x25

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_READ_COLUMN:I = 0x17

.field public static final MESSAGE_REF_MESSAGE_URI_COLUMN:I = 0xf

.field public static final MESSAGE_REPLY_TO_COLUMN:I = 0xa

.field public static final MESSAGE_SEEN_COLUMN:I = 0x18

.field public static final MESSAGE_SENDING_STATE_COLUMN:I = 0x23

.field public static final MESSAGE_SERVER_ID_COLUMN:I = 0x1

.field public static final MESSAGE_SNIPPET_COLUMN:I = 0x5

.field public static final MESSAGE_SPAM_WARNING_LEVEL_COLUMN:I = 0x20

.field public static final MESSAGE_SPAM_WARNING_LINK_TYPE_COLUMN:I = 0x21

.field public static final MESSAGE_SPAM_WARNING_STRING_ID_COLUMN:I = 0x1f

.field public static final MESSAGE_STARRED_COLUMN:I = 0x19

.field public static final MESSAGE_SUBJECT_COLUMN:I = 0x4

.field public static final MESSAGE_TO_COLUMN:I = 0x7

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.message"

.field public static final MESSAGE_URI_COLUMN:I = 0x2

.field public static final MESSAGE_VIA_DOMAIN_COLUMN:I = 0x22

.field public static final QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

.field public static final QUOTED_TEXT_OFFSET_COLUMN:I = 0x1a

.field public static final SEEN_QUERY_PARAMETER:Ljava/lang/String; = "seen"

.field public static final SEQUENCE_QUERY_PARAMETER:Ljava/lang/String; = "seq"

.field public static final UNDO_MESSAGE_LIST_COLUMN:I

.field public static final UNDO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 178
    const-string/jumbo v1, "_id"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "name"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "senderName"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "accountManagerName"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "accountId"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "type"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "providerVersion"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "accountUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "folderListUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "fullFolderListUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "allFolderListUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "searchUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "accountFromAddresses"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "expungeMessageUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "undoUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "accountSettingsIntentUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "syncStatus"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "helpIntentUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "sendFeedbackIntentUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "reauthenticationUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "composeUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "mimeType"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "recentFolderListUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "color"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "defaultRecentFolderListUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "manualSyncUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "viewProxyUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "accountCookieUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "signature"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "auto_advance"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "snap_headers"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "reply_behavior"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "conversation_list_icon"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "confirm_delete"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "confirm_archive"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "confirm_send"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "default_inbox"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "default_inbox_name"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "force_reply_from_default"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "max_attachment_size"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 218
    const-string/jumbo v1, "swipe"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "importance_markers_enabled"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "show_chevrons_enabled"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "setup_intent_uri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "conversation_view_mode"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "veiled_address_pattern"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "updateSettingsUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "enableMessageTransforms"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "syncAuthority"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "quickResponseUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "settingsFragmentClass"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "move_to_inbox"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "show_images"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "welcome_tour_shown_version"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "securityHold"

    const-class v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "accountSecurityUri"

    const-class v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 176
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    .line 237
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 238
    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, "capabilities"

    const-class v2, Ljava/lang/Integer;

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 236
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    .line 244
    sget-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 243
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 247
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    .line 688
    new-array v0, v6, [Ljava/lang/String;

    .line 689
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 690
    const-string/jumbo v1, "quickResponse"

    aput-object v1, v0, v4

    .line 691
    const-string/jumbo v1, "uri"

    aput-object v1, v0, v5

    .line 688
    sput-object v0, Lcom/android/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    .line 705
    new-array v0, v4, [Ljava/lang/String;

    .line 706
    const-string/jumbo v1, "cookie"

    aput-object v1, v0, v3

    .line 705
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

    .line 765
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 766
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 767
    const-string/jumbo v1, "persistentId"

    aput-object v1, v0, v4

    .line 768
    const-string/jumbo v1, "folderUri"

    aput-object v1, v0, v5

    .line 769
    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    .line 770
    const-string/jumbo v1, "hasChildren"

    aput-object v1, v0, v7

    .line 771
    const-string/jumbo v1, "capabilities"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 772
    const-string/jumbo v1, "syncWindow"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 773
    const-string/jumbo v1, "conversationListUri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 774
    const-string/jumbo v1, "childFoldersListUri"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 775
    const-string/jumbo v1, "unseenCount"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 776
    const-string/jumbo v1, "unreadCount"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 777
    const-string/jumbo v1, "totalCount"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 778
    const-string/jumbo v1, "refreshUri"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 779
    const-string/jumbo v1, "syncStatus"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 780
    const-string/jumbo v1, "lastSyncResult"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 781
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 782
    const-string/jumbo v1, "iconResId"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 783
    const-string/jumbo v1, "notificationIconResId"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 784
    const-string/jumbo v1, "bgColor"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 785
    const-string/jumbo v1, "fgColor"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 786
    const-string/jumbo v1, "loadMoreUri"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 787
    const-string/jumbo v1, "hierarchicalDesc"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 788
    const-string/jumbo v1, "lastMessageTimestamp"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 789
    const-string/jumbo v1, "parentUri"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 765
    sput-object v0, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 793
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 794
    sget-object v1, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 793
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, "unreadSenders"

    .line 793
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 796
    new-array v1, v3, [Ljava/lang/String;

    .line 793
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 792
    sput-object v0, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

    .line 1077
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 1078
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1079
    const-string/jumbo v1, "conversationUri"

    aput-object v1, v0, v4

    .line 1080
    const-string/jumbo v1, "messageListUri"

    aput-object v1, v0, v5

    .line 1081
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    .line 1082
    const-string/jumbo v1, "snippet"

    aput-object v1, v0, v7

    .line 1083
    const-string/jumbo v1, "conversationInfo"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1084
    const-string/jumbo v1, "dateReceivedMs"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1085
    const-string/jumbo v1, "hasAttachments"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1086
    const-string/jumbo v1, "numMessages"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1087
    const-string/jumbo v1, "numDrafts"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1088
    const-string/jumbo v1, "sendingState"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1089
    const-string/jumbo v1, "priority"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1090
    const-string/jumbo v1, "read"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1091
    const-string/jumbo v1, "seen"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1092
    const-string/jumbo v1, "starred"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1093
    const-string/jumbo v1, "rawFolders"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1094
    const-string/jumbo v1, "conversationFlags"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1095
    const-string/jumbo v1, "personalLevel"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1096
    const-string/jumbo v1, "spam"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1097
    const-string/jumbo v1, "phishing"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1098
    const-string/jumbo v1, "muted"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1099
    const-string/jumbo v1, "color"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1100
    const-string/jumbo v1, "accountUri"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1101
    const-string/jumbo v1, "senderInfo"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1102
    const-string/jumbo v1, "conversationBaseUri"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1103
    const-string/jumbo v1, "remote"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1104
    const-string/jumbo v1, "orderKey"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 1077
    sput-object v0, Lcom/android/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1590
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    .line 1591
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1592
    const-string/jumbo v1, "serverMessageId"

    aput-object v1, v0, v4

    .line 1593
    const-string/jumbo v1, "messageUri"

    aput-object v1, v0, v5

    .line 1594
    const-string/jumbo v1, "conversationId"

    aput-object v1, v0, v6

    .line 1595
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v7

    .line 1596
    const-string/jumbo v1, "snippet"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1597
    const-string/jumbo v1, "fromAddress"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1598
    const-string/jumbo v1, "toAddresses"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1599
    const-string/jumbo v1, "ccAddresses"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1600
    const-string/jumbo v1, "bccAddresses"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1601
    const-string/jumbo v1, "replyToAddress"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1602
    const-string/jumbo v1, "dateReceivedMs"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1603
    const-string/jumbo v1, "bodyHtml"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1604
    const-string/jumbo v1, "bodyText"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1605
    const-string/jumbo v1, "bodyEmbedsExternalResources"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1606
    const-string/jumbo v1, "refMessageId"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1607
    const-string/jumbo v1, "draftType"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1608
    const-string/jumbo v1, "appendRefMessageContent"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1609
    const-string/jumbo v1, "hasAttachments"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1610
    const-string/jumbo v1, "attachmentListUri"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1611
    const-string/jumbo v1, "attachmentByCidUri"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1612
    const-string/jumbo v1, "messageFlags"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1613
    const-string/jumbo v1, "alwaysShowImages"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1614
    const-string/jumbo v1, "read"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1615
    const-string/jumbo v1, "seen"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1616
    const-string/jumbo v1, "starred"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1617
    const-string/jumbo v1, "quotedTextStartPos"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 1618
    const-string/jumbo v1, "attachments"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 1619
    const-string/jumbo v1, "customFrom"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 1620
    const-string/jumbo v1, "messageAccountUri"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 1621
    const-string/jumbo v1, "eventIntentUri"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 1622
    const-string/jumbo v1, "spamWarningString"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 1623
    const-string/jumbo v1, "spamWarningLevel"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 1624
    const-string/jumbo v1, "spamWarningLinkType"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 1625
    const-string/jumbo v1, "viaDomain"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 1626
    const-string/jumbo v1, "sendingState"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 1627
    const-string/jumbo v1, "clipped"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 1628
    const-string/jumbo v1, "permalink"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 1590
    sput-object v0, Lcom/android/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1946
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 1947
    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v3

    .line 1948
    const-string/jumbo v1, "_size"

    aput-object v1, v0, v4

    .line 1949
    const-string/jumbo v1, "uri"

    aput-object v1, v0, v5

    .line 1950
    const-string/jumbo v1, "contentType"

    aput-object v1, v0, v6

    .line 1951
    const-string/jumbo v1, "state"

    aput-object v1, v0, v7

    .line 1952
    const-string/jumbo v1, "destination"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1953
    const-string/jumbo v1, "downloadedSize"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1954
    const-string/jumbo v1, "contentUri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1955
    const-string/jumbo v1, "thumbnailUri"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1956
    const-string/jumbo v1, "previewIntentUri"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1957
    const-string/jumbo v1, "providerData"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1958
    const-string/jumbo v1, "supportsDownloadAgain"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1959
    const-string/jumbo v1, "type"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1960
    const-string/jumbo v1, "flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1961
    const-string/jumbo v1, "contentId"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1946
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 1981
    const-string/jumbo v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1980
    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 1984
    const-string/jumbo v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

    .line 2225
    new-array v0, v4, [Ljava/lang/String;

    .line 2226
    const-string/jumbo v1, "messageListUri"

    aput-object v1, v0, v3

    .line 2225
    sput-object v0, Lcom/android/mail/providers/UIProvider;->UNDO_PROJECTION:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSyncValue(II)I
    .locals 1
    .param p0, "syncStatus"    # I
    .param p1, "lastSyncResult"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p1

    return v0
.end method

.method public static getResultFromLastSyncResult(I)I
    .locals 1
    .param p0, "lastSyncValue"    # I

    .prologue
    .line 141
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static getStatusFromLastSyncResult(I)I
    .locals 1
    .param p0, "lastSyncValue"    # I

    .prologue
    .line 149
    shr-int/lit8 v0, p0, 0x4

    return v0
.end method
