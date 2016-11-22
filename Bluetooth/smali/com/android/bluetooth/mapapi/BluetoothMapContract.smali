.class public final Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$AccountColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessagePartColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$EmailMessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$FolderColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConversationColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConvoContactColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatStatusColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceColumns;
    }
.end annotation


# static fields
.field public static final BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final BT_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final DELIVERY_STATE_DELIVERED:Ljava/lang/String; = "delivered"

.field public static final DELIVERY_STATE_SENT:Ljava/lang/String; = "sent"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final EXTRA_BLUETOOTH_STATE:Ljava/lang/String; = "BluetoothState"

.field public static final EXTRA_CHAT_STATE:Ljava/lang/String; = "ChatState"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "ConversationId"

.field public static final EXTRA_LAST_ACTIVE:Ljava/lang/String; = "LastActive"

.field public static final EXTRA_PRESENCE_STATE:Ljava/lang/String; = "PresenceState"

.field public static final EXTRA_PRESENCE_STATUS:Ljava/lang/String; = "PresenceStatus"

.field public static final EXTRA_UPDATE_ACCOUNT_ID:Ljava/lang/String; = "UpdateAccountId"

.field public static final EXTRA_UPDATE_FOLDER_ID:Ljava/lang/String; = "UpdateFolderId"

.field public static final FILE_MSG_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final FILE_MSG_DOWNLOAD_NO_ATTACHMENTS:Ljava/lang/String; = "DOWNLOAD_NO_ATTACHMENTS"

.field public static final FILE_MSG_NO_ATTACHMENTS:Ljava/lang/String; = "NO_ATTACHMENTS"

.field public static final FILTER_ORIGINATOR_SUBSTRING:Ljava/lang/String; = "org_sub_str"

.field public static final FILTER_PERIOD_BEGIN:Ljava/lang/String; = "t_begin"

.field public static final FILTER_PERIOD_END:Ljava/lang/String; = "t_end"

.field public static final FILTER_READ_STATUS:Ljava/lang/String; = "read"

.field public static final FILTER_RECIPIENT_SUBSTRING:Ljava/lang/String; = "rec_sub_str"

.field public static final FILTER_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final FOLDER_ID_DELETED:J = 0x5L

.field public static final FOLDER_ID_DRAFT:J = 0x3L

.field public static final FOLDER_ID_INBOX:J = 0x1L

.field public static final FOLDER_ID_OTHER:J = 0x0L

.field public static final FOLDER_ID_OUTBOX:J = 0x4L

.field public static final FOLDER_ID_SENT:J = 0x2L

.field public static final FOLDER_NAME_DELETED:Ljava/lang/String; = "DELETED"

.field public static final FOLDER_NAME_DRAFT:Ljava/lang/String; = "DRAFT"

.field public static final FOLDER_NAME_INBOX:Ljava/lang/String; = "INBOX"

.field public static final FOLDER_NAME_OTHER:Ljava/lang/String; = "OTHER"

.field public static final FOLDER_NAME_OUTBOX:Ljava/lang/String; = "OUTBOX"

.field public static final FOLDER_NAME_SENT:Ljava/lang/String; = "SENT"

.field public static final METHOD_SET_BLUETOOTH_STATE:Ljava/lang/String; = "SetBtState"

.field public static final METHOD_SET_OWNER_STATUS:Ljava/lang/String; = "SetOwnerStatus"

.field public static final METHOD_UPDATE_FOLDER:Ljava/lang/String; = "UpdateFolder"

.field public static final PROVIDER_INTERFACE_EMAIL:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

.field public static final PROVIDER_INTERFACE_IM:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

.field public static final RECEPTION_STATE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final RECEPTION_STATE_FRACTIONED:Ljava/lang/String; = "fractioned"

.field public static final RECEPTION_STATE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final TABLE_ACCOUNT:Ljava/lang/String; = "Account"

.field public static final TABLE_CONVERSATION:Ljava/lang/String; = "Conversation"

.field public static final TABLE_CONVOCONTACT:Ljava/lang/String; = "ConvoContact"

.field public static final TABLE_FOLDER:Ljava/lang/String; = "Folder"

.field public static final TABLE_MESSAGE:Ljava/lang/String; = "Message"

.field public static final TABLE_MESSAGE_PART:Ljava/lang/String; = "Part"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1073
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 1074
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1075
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 1076
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v5

    .line 1078
    const-string/jumbo v1, "body"

    aput-object v1, v0, v6

    .line 1079
    const-string/jumbo v1, "message_size"

    aput-object v1, v0, v7

    .line 1080
    const-string/jumbo v1, "folder_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1081
    const-string/jumbo v1, "flag_read"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1082
    const-string/jumbo v1, "flag_protected"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1083
    const-string/jumbo v1, "high_priority"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1084
    const-string/jumbo v1, "flag_attachment"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1085
    const-string/jumbo v1, "attachment_size"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1086
    const-string/jumbo v1, "from_list"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1087
    const-string/jumbo v1, "to_list"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1088
    const-string/jumbo v1, "cc_list"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1089
    const-string/jumbo v1, "bcc_list"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1090
    const-string/jumbo v1, "reply_to_List"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1091
    const-string/jumbo v1, "reception_state"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1092
    const-string/jumbo v1, "delivery_state"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1093
    const-string/jumbo v1, "thread_id"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1073
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1096
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 1097
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1098
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 1099
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v5

    .line 1100
    const-string/jumbo v1, "message_size"

    aput-object v1, v0, v6

    .line 1101
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v7

    .line 1102
    const-string/jumbo v1, "flag_read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1103
    const-string/jumbo v1, "flag_protected"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1104
    const-string/jumbo v1, "high_priority"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1105
    const-string/jumbo v1, "flag_attachment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1106
    const-string/jumbo v1, "attachment_size"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1107
    const-string/jumbo v1, "attachment_mime_types"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1108
    const-string/jumbo v1, "from_list"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1109
    const-string/jumbo v1, "to_list"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1110
    const-string/jumbo v1, "reception_state"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1111
    const-string/jumbo v1, "delivery_state"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1112
    const-string/jumbo v1, "thread_id"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1113
    const-string/jumbo v1, "thread_name"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1096
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1119
    new-array v0, v6, [Ljava/lang/String;

    .line 1120
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1121
    const-string/jumbo v1, "account_display_name"

    aput-object v1, v0, v4

    .line 1122
    const-string/jumbo v1, "flag_expose"

    aput-object v1, v0, v5

    .line 1119
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 1129
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1130
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1131
    const-string/jumbo v1, "account_display_name"

    aput-object v1, v0, v4

    .line 1132
    const-string/jumbo v1, "flag_expose"

    aput-object v1, v0, v5

    .line 1133
    const-string/jumbo v1, "account_uci"

    aput-object v1, v0, v6

    .line 1134
    const-string/jumbo v1, "account_uci_PREFIX"

    aput-object v1, v0, v7

    .line 1129
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 1140
    new-array v0, v7, [Ljava/lang/String;

    .line 1141
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1142
    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    .line 1143
    const-string/jumbo v1, "account_id"

    aput-object v1, v0, v5

    .line 1144
    const-string/jumbo v1, "parent_id"

    aput-object v1, v0, v6

    .line 1140
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    .line 1151
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 1153
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    .line 1154
    const-string/jumbo v1, "thread_name"

    aput-object v1, v0, v4

    .line 1155
    const-string/jumbo v1, "read_status"

    aput-object v1, v0, v5

    .line 1156
    const-string/jumbo v1, "last_thread_activity"

    aput-object v1, v0, v6

    .line 1157
    const-string/jumbo v1, "version_counter"

    aput-object v1, v0, v7

    .line 1158
    const-string/jumbo v1, "convo_summary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1160
    const-string/jumbo v1, "x_bt_uci"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1161
    const-string/jumbo v1, "name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1162
    const-string/jumbo v1, "nickname"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1163
    const-string/jumbo v1, "chat_state"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1164
    const-string/jumbo v1, "last_active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1165
    const-string/jumbo v1, "x_bt_uid"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1166
    const-string/jumbo v1, "presence_state"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1167
    const-string/jumbo v1, "status_text"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1168
    const-string/jumbo v1, "priority"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1151
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1174
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 1175
    const-string/jumbo v1, "x_bt_uci"

    aput-object v1, v0, v3

    .line 1176
    const-string/jumbo v1, "convo_id"

    aput-object v1, v0, v4

    .line 1177
    const-string/jumbo v1, "name"

    aput-object v1, v0, v5

    .line 1178
    const-string/jumbo v1, "nickname"

    aput-object v1, v0, v6

    .line 1179
    const-string/jumbo v1, "x_bt_uid"

    aput-object v1, v0, v7

    .line 1180
    const-string/jumbo v1, "chat_state"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1181
    const-string/jumbo v1, "last_active"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1182
    const-string/jumbo v1, "presence_state"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1183
    const-string/jumbo v1, "priority"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1184
    const-string/jumbo v1, "status_text"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1185
    const-string/jumbo v1, "last_online"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1174
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 1191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1192
    const-string/jumbo v1, "x_bt_uci"

    aput-object v1, v0, v3

    .line 1193
    const-string/jumbo v1, "convo_id"

    aput-object v1, v0, v4

    .line 1194
    const-string/jumbo v1, "x_bt_uid"

    aput-object v1, v0, v5

    .line 1195
    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    .line 1196
    const-string/jumbo v1, "nickname"

    aput-object v1, v0, v7

    .line 1191
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1203
    new-array v0, v5, [Ljava/lang/String;

    .line 1204
    const-string/jumbo v1, "chat_state"

    aput-object v1, v0, v3

    .line 1205
    const-string/jumbo v1, "last_active"

    aput-object v1, v0, v4

    .line 1203
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

    .line 1211
    new-array v0, v7, [Ljava/lang/String;

    .line 1212
    const-string/jumbo v1, "presence_state"

    aput-object v1, v0, v3

    .line 1213
    const-string/jumbo v1, "priority"

    aput-object v1, v0, v4

    .line 1214
    const-string/jumbo v1, "status_text"

    aput-object v1, v0, v5

    .line 1215
    const-string/jumbo v1, "last_online"

    aput-object v1, v0, v6

    .line 1211
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "Account"

    .line 164
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "Account"

    .line 173
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConversationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "Conversation"

    .line 233
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "ConvoContact"

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "ConvoContact"

    .line 258
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "ConvoContact"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "Folder"

    .line 220
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "Message"

    .line 184
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "Message"

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "Message"

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
