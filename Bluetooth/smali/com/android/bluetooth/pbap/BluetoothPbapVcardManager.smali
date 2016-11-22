.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
    }
.end annotation


# static fields
.field static final CALLLOG_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = null

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_NAME_COLUMN_INDEX:I = 0x1

.field static final PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field private static final SIM_NAME_COLUMN_INDEX:I = 0x0

.field private static final SIM_NUMBER_COLUMN_INDEX:I = 0x1

.field static final SIM_PROJECTION:[Ljava/lang/String;

.field static final SORT_ORDER_PHONE_NUMBER:Ljava/lang/String; = "data1 ASC"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardManager"

.field private static final V:Z


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 76
    const-string/jumbo v0, "BluetoothPbap"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 84
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v5

    .line 85
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v3

    .line 86
    const-string/jumbo v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 82
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 94
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v5

    .line 92
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v4

    .line 104
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v5

    .line 102
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v5

    .line 107
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string/jumbo v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_URI:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 123
    return-void
.end method

.method private static appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 13
    .param p1, "defaultName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, -0x1

    .line 1125
    const-string/jumbo v10, "contact_id"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1126
    .local v2, "contactIdColumn":I
    const-string/jumbo v10, "_id"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1127
    .local v4, "idColumn":I
    const-string/jumbo v10, "display_name"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1128
    .local v5, "nameColumn":I
    const-wide/16 v8, -0x1

    .line 1129
    .local v8, "previousContactId":J
    invoke-interface {p2, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1130
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1131
    if-eq v2, v12, :cond_2

    move v10, v2

    :goto_1
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1132
    .local v0, "contactId":J
    if-eq v5, v12, :cond_3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "displayName":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1134
    move-object v3, p1

    .line 1137
    :cond_1
    cmp-long v10, v8, v0

    if-eqz v10, :cond_0

    .line 1138
    move-wide v8, v0

    .line 1139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "contactId":J
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_2
    move v10, v4

    .line 1131
    goto :goto_1

    .line 1132
    .restart local v0    # "contactId":J
    :cond_3
    move-object v3, p1

    .restart local v3    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 1142
    .end local v0    # "contactId":J
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_4
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v10, :cond_5

    .line 1143
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "nameId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1144
    .local v6, "nameId":Ljava/lang/String;
    const-string/jumbo v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appendDistinctNameIdList result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1124
    .end local v6    # "nameId":Ljava/lang/String;
    .end local v7    # "nameId$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private static final getDistinctContactIdSize(Landroid/database/Cursor;)I
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, -0x1

    .line 1101
    const-string/jumbo v5, "contact_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1102
    .local v2, "contactIdColumn":I
    const-string/jumbo v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1103
    .local v4, "idColumn":I
    const-wide/16 v6, -0x1

    .line 1104
    .local v6, "previousContactId":J
    const/4 v3, 0x0

    .line 1105
    .local v3, "count":I
    invoke-interface {p0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1106
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1107
    if-eq v2, v8, :cond_1

    move v5, v2

    :goto_1
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1108
    .local v0, "contactId":J
    cmp-long v5, v6, v0

    if-eqz v5, :cond_0

    .line 1109
    add-int/lit8 v3, v3, 0x1

    .line 1110
    move-wide v6, v0

    goto :goto_0

    .end local v0    # "contactId":J
    :cond_1
    move v5, v4

    .line 1107
    goto :goto_1

    .line 1113
    :cond_2
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v5, :cond_3

    .line 1114
    const-string/jumbo v5, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDistinctContactIdSize result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_3
    return v3
.end method

.method private final getOwnerPhoneNumberVcardFromProfile(Z[B)Ljava/lang/String;
    .locals 2
    .param p1, "vcardType21"    # Z
    .param p2, "filter"    # [B

    .prologue
    .line 136
    if-eqz p1, :cond_1

    .line 137
    const/high16 v0, -0x40000000    # -2.0f

    .line 142
    .local v0, "vcardType":I
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    .end local v0    # "vcardType":I
    :cond_1
    const v0, -0x3fffffff    # -2.0000002f

    .restart local v0    # "vcardType":I
    goto :goto_0
.end method

.method private static final getPhoneLookupFilterUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1093
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public StripTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "vCard"    # Ljava/lang/String;

    .prologue
    .line 925
    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "attr":[Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 927
    .local v0, "Vcard":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 928
    aget-object v3, v1, v2

    const-string/jumbo v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    aget-object v3, v1, v2

    const-string/jumbo v4, "("

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 930
    aget-object v3, v1, v2

    const-string/jumbo v4, ")"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 931
    aget-object v3, v1, v2

    const-string/jumbo v4, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 932
    aget-object v3, v1, v2

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 927
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 937
    aget-object v3, v1, v2

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 941
    :cond_3
    sget-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Vcard with stripped telephone no.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_4
    return-object v0
.end method

.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I
    .locals 22
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "startPoint"    # I
    .param p4, "endPoint"    # I
    .param p5, "vcardType21"    # Z
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 495
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 496
    :cond_0
    const-string/jumbo v2, "BluetoothPbapVcardManager"

    const-string/jumbo v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/16 v2, 0xd0

    return v2

    .line 499
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "typeSelection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 502
    .local v3, "myUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 503
    const-string/jumbo v2, "_id"

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 505
    .local v4, "CALLLOG_PROJECTION":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 507
    .local v13, "ID_COLUMN_INDEX":I
    const/4 v14, 0x0

    .line 508
    .local v14, "callsCursor":Landroid/database/Cursor;
    const-wide/16 v20, 0x0

    .line 509
    .local v20, "startPointId":J
    const-wide/16 v16, 0x0

    .line 512
    .local v16, "endPointId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 513
    const-string/jumbo v7, "_id DESC"

    .line 512
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 514
    .local v14, "callsCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 515
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 517
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Call Log query startPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 519
    move-wide/from16 v16, v20

    .line 524
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Call log query endPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_3
    if-eqz v14, :cond_4

    .line 530
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 531
    .end local v14    # "callsCursor":Landroid/database/Cursor;
    :goto_1
    const/4 v14, 0x0

    .line 536
    :cond_4
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_8

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 546
    .local v18, "recordSelection":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_9

    .line 547
    move-object/from16 v8, v18

    .line 552
    .local v8, "selection":Ljava/lang/String;
    :goto_3
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Call log query selection is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeCallLogsAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z[B)I

    move-result v2

    return v2

    .line 521
    .end local v8    # "selection":Ljava/lang/String;
    .end local v18    # "recordSelection":Ljava/lang/String;
    .restart local v14    # "callsCursor":Landroid/database/Cursor;
    :cond_6
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 522
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    goto :goto_0

    .line 526
    .end local v14    # "callsCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 527
    .local v15, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string/jumbo v2, "BluetoothPbapVcardManager"

    const-string/jumbo v6, "CursorWindowAllocationException while composing calllog vcards"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    if-eqz v14, :cond_4

    .line 530
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 528
    .end local v15    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v2

    .line 529
    if-eqz v14, :cond_7

    .line 530
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v14, 0x0

    .line 528
    :cond_7
    throw v2

    .line 541
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "recordSelection":Ljava/lang/String;
    goto/16 :goto_2

    .line 549
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selection":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 13
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 634
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 635
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    const-string/jumbo v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v1, 0xd0

    return v1

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 640
    .local v2, "myUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 641
    .local v10, "contactCursor":Landroid/database/Cursor;
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 642
    const-string/jumbo v3, "contact_id"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 641
    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 644
    .local v11, "contactIdCursor":Landroid/database/Cursor;
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 647
    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const-string/jumbo v6, "contact_id"

    const/4 v5, 0x0

    .line 646
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 648
    .local v10, "contactCursor":Landroid/database/Cursor;
    invoke-static {v10, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 653
    .end local v11    # "contactIdCursor":Landroid/database/Cursor;
    .local v5, "contactIdCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v10    # "contactCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 672
    invoke-virtual/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I

    move-result v1

    return v1

    .line 649
    .end local v5    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v11    # "contactIdCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 650
    .local v12, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    .line 651
    const-string/jumbo v3, "CursorWindowAllocationException while composing phonebook one vcard"

    .line 650
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    if-eqz v10, :cond_2

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v12    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_2
    :goto_1
    move-object v5, v11

    .end local v11    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v5    # "contactIdCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 652
    .end local v5    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v11    # "contactIdCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 653
    if-eqz v10, :cond_3

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_3
    throw v1

    .line 657
    .local v10, "contactCursor":Landroid/database/Cursor;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_2

    .line 659
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 660
    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const-string/jumbo v6, "display_name"

    const/4 v5, 0x0

    .line 659
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 661
    .local v10, "contactCursor":Landroid/database/Cursor;
    invoke-static {v10, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 667
    .end local v11    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v5    # "contactIdCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 668
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 663
    .end local v5    # "contactIdCursor":Landroid/database/Cursor;
    .end local v10    # "contactCursor":Landroid/database/Cursor;
    .restart local v11    # "contactIdCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v12

    .line 664
    .restart local v12    # "e":Landroid/database/CursorWindowAllocationException;
    :try_start_3
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    .line 665
    const-string/jumbo v3, "CursorWindowAllocationException while composing phonebook one vcard"

    .line 664
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 667
    if-eqz v10, :cond_2

    .line 668
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 666
    .end local v12    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_1
    move-exception v1

    .line 667
    if-eqz v10, :cond_5

    .line 668
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_5
    throw v1
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;Z[B)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "ownerVCard"    # Ljava/lang/String;
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 560
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-le p2, p3, :cond_1

    .line 561
    :cond_0
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "internal error: startPoint or endPoint is not correct."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v0, 0xd0

    return v0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 566
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 567
    .local v9, "contactCursor":Landroid/database/Cursor;
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 568
    const-string/jumbo v2, "contact_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 567
    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 571
    .local v10, "contactIdCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    .line 572
    const-string/jumbo v5, "contact_id"

    const/4 v4, 0x0

    .line 571
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 573
    .local v9, "contactCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 574
    invoke-static {v9, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 580
    .end local v10    # "contactIdCursor":Landroid/database/Cursor;
    .local v4, "contactIdCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 581
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v9    # "contactCursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 584
    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I

    move-result v0

    return v0

    .line 577
    .end local v4    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v10    # "contactIdCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 578
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "CursorWindowAllocationException while composing phonebook vcards"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    if-eqz v9, :cond_3

    .line 581
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v10

    .end local v10    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v4    # "contactIdCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 579
    .end local v4    # "contactIdCursor":Landroid/database/Cursor;
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v10    # "contactIdCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 580
    if-eqz v9, :cond_4

    .line 581
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_4
    throw v0

    .restart local v9    # "contactCursor":Landroid/database/Cursor;
    :cond_5
    move-object v4, v10

    .end local v10    # "contactIdCursor":Landroid/database/Cursor;
    .restart local v4    # "contactIdCursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public final composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .locals 10
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I

    .prologue
    const/16 v9, 0xd0

    const/4 v6, 0x1

    .line 740
    if-ge p2, v6, :cond_0

    .line 741
    const-string/jumbo v6, "BluetoothPbapVcardManager"

    const-string/jumbo v7, "Internal error: offset is not correct."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return v9

    .line 744
    :cond_0
    const-string/jumbo v6, "content://icc/adn"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 746
    .local v4, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 747
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 749
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 750
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 751
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-result v6

    if-eqz v6, :cond_6

    .line 752
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 755
    sget v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p5, v6, :cond_9

    .line 756
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothPbapVcardManager"

    const-string/jumbo v7, "getPhonebookNameList, order by index"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_1
    add-int/lit8 v6, p2, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 762
    :cond_2
    :goto_0
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v6, :cond_3

    .line 763
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v6, 0x1

    iput-boolean v6, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 764
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 766
    :cond_3
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "vcard":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 768
    const-string/jumbo v6, "BluetoothPbapVcardManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to read a contact. Error reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 769
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v8

    .line 768
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    if-eqz v3, :cond_4

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_4
    if-eqz v1, :cond_5

    .line 778
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 770
    :cond_5
    return v9

    .line 774
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_6
    if-eqz v3, :cond_7

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_7
    if-eqz v1, :cond_8

    .line 778
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 753
    :cond_8
    return v9

    .line 758
    :cond_9
    :try_start_3
    sget v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p5, v6, :cond_2

    .line 759
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "BluetoothPbapVcardManager"

    const-string/jumbo v7, "getPhonebookNameList, order by alpha"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_a
    add-int/lit8 v6, p2, -0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 773
    .end local p1    # "op":Ljavax/obex/Operation;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .line 774
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :goto_1
    if-eqz v2, :cond_b

    .line 775
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_b
    if-eqz v0, :cond_c

    .line 778
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 773
    :cond_c
    throw v6

    .line 772
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v5    # "vcard":Ljava/lang/String;
    :cond_d
    :try_start_4
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 774
    if-eqz v3, :cond_e

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_e
    if-eqz v1, :cond_f

    .line 778
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 782
    :cond_f
    const/16 v6, 0xa0

    return v6

    .line 773
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v5    # "vcard":Ljava/lang/String;
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_1
.end method

.method public final composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .locals 10
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "ownerVCard"    # Ljava/lang/String;

    .prologue
    .line 589
    const/4 v7, 0x1

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_1

    .line 590
    :cond_0
    const-string/jumbo v7, "BluetoothPbapVcardManager"

    const-string/jumbo v8, "internal error: startPoint or endPoint is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v7, 0xd0

    return v7

    .line 593
    :cond_1
    const-string/jumbo v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 594
    .local v5, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 595
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 597
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    invoke-direct {v1, p0, p1, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 600
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-result v7

    if-eqz v7, :cond_5

    .line 601
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 604
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 605
    add-int/lit8 v4, p2, -0x1

    .local v4, "count":I
    :goto_0
    if-ge v4, p3, :cond_2

    .line 606
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_8

    .line 607
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 608
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 620
    :cond_2
    if-eqz v3, :cond_3

    .line 621
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 623
    :cond_3
    if-eqz v1, :cond_4

    .line 624
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 628
    :cond_4
    const/16 v7, 0xa0

    return v7

    .line 602
    .end local v4    # "count":I
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_5
    const/16 v7, 0xd0

    .line 620
    if-eqz v3, :cond_6

    .line 621
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 623
    :cond_6
    if-eqz v1, :cond_7

    .line 624
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 602
    :cond_7
    return v7

    .line 611
    .restart local v4    # "count":I
    :cond_8
    :try_start_3
    invoke-virtual {v3, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "vcard":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 613
    const-string/jumbo v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 614
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    .line 613
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 615
    const/16 v7, 0xd0

    .line 620
    if-eqz v3, :cond_9

    .line 621
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 623
    :cond_9
    if-eqz v1, :cond_a

    .line 624
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 615
    :cond_a
    return v7

    .line 617
    :cond_b
    :try_start_4
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v4    # "count":I
    .end local v6    # "vcard":Ljava/lang/String;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_0
    move-exception v7

    .line 620
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local p1    # "op":Ljavax/obex/Operation;
    :goto_1
    if-eqz v2, :cond_c

    .line 621
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 623
    :cond_c
    if-eqz v0, :cond_d

    .line 624
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 619
    :cond_d
    throw v7

    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_1

    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_1
.end method

.method public final composeCallLogsAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z[B)I
    .locals 14
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "ignorefilter"    # Z
    .param p6, "filter"    # [B

    .prologue
    .line 877
    const-wide/16 v6, 0x0

    .line 878
    .local v6, "timestamp":J
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 880
    :cond_0
    const/4 v4, 0x0

    .line 881
    .local v4, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v2, 0x0

    .line 884
    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v5, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 885
    .local v5, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    .end local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    move-object/from16 v0, p4

    invoke-direct {v3, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 886
    .local v3, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const-string/jumbo v10, "_id DESC"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v9, v0, v11, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 887
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 891
    :goto_0
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 892
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v9, :cond_8

    .line 893
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v9, 0x1

    iput-boolean v9, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 894
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 911
    :cond_1
    if-eqz v5, :cond_2

    .line 912
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 914
    :cond_2
    if-eqz v3, :cond_3

    .line 915
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 919
    :cond_3
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Total vcard composing and sending out takes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    .line 919
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 920
    const-string/jumbo v11, " ms"

    .line 919
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_4
    const/16 v9, 0xa0

    return v9

    .line 888
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_5
    const/16 v9, 0xd0

    .line 911
    if-eqz v5, :cond_6

    .line 912
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 914
    :cond_6
    if-eqz v3, :cond_7

    .line 915
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 888
    :cond_7
    return v9

    .line 897
    :cond_8
    :try_start_3
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, "vcard":Ljava/lang/String;
    if-nez v8, :cond_b

    .line 899
    const-string/jumbo v9, "BluetoothPbapVcardManager"

    .line 900
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to read a contact. Error reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 899
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 901
    const/16 v9, 0xd0

    .line 911
    if-eqz v5, :cond_9

    .line 912
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 914
    :cond_9
    if-eqz v3, :cond_a

    .line 915
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 901
    :cond_a
    return v9

    .line 903
    :cond_b
    :try_start_4
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v9, :cond_c

    .line 904
    const-string/jumbo v9, "BluetoothPbapVcardManager"

    const-string/jumbo v10, "Vcard Entry:"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string/jumbo v9, "BluetoothPbapVcardManager"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_c
    invoke-virtual {v3, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 910
    .end local v8    # "vcard":Ljava/lang/String;
    .end local p1    # "op":Ljavax/obex/Operation;
    :catchall_0
    move-exception v9

    move-object v2, v3

    .end local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v4, v5

    .line 911
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v5    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :goto_1
    if-eqz v4, :cond_d

    .line 912
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 914
    :cond_d
    if-eqz v2, :cond_e

    .line 915
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 910
    :cond_e
    throw v9

    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v5    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_1
.end method

.method public final composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I
    .locals 14
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "contactIdCursor"    # Landroid/database/Cursor;
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "ignorefilter"    # Z
    .param p6, "filter"    # [B

    .prologue
    .line 787
    const-wide/16 v6, 0x0

    .line 788
    .local v6, "timestamp":J
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 790
    :cond_0
    const/4 v4, 0x0

    .line 791
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;

    if-eqz p5, :cond_1

    const/16 p6, 0x0

    .end local p6    # "filter":[B
    :cond_1
    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;-><init>([B)V

    .line 793
    .local v9, "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
    const/4 v2, 0x0

    .line 797
    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_8

    .line 798
    const/high16 v8, -0x40000000    # -2.0f

    .line 802
    .local v8, "vcardType":I
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isPhotoEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 803
    const/high16 v10, 0x800000

    or-int/2addr v8, v10

    .line 808
    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object v4

    .line 814
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;

    invoke-direct {v10, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v4, v10}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 827
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    .local v3, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_1
    const-string/jumbo v10, "BluetoothPbapVcardManager"

    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "contactIdCursor size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;)V

    .line 829
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 831
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 835
    :cond_3
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_4

    .line 836
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_c

    .line 837
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 838
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    :cond_4
    if-eqz v4, :cond_5

    .line 861
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 863
    :cond_5
    if-eqz v3, :cond_6

    .line 864
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 868
    :cond_6
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Total vcard composing and sending out takes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    .line 868
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 869
    const-string/jumbo v12, " ms"

    .line 868
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_7
    const/16 v10, 0xa0

    return v10

    .line 800
    .end local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v8    # "vcardType":I
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_8
    const v8, -0x3fffffff    # -2.0000002f

    .restart local v8    # "vcardType":I
    goto/16 :goto_0

    .line 832
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    :cond_9
    const/16 v10, 0xd0

    .line 860
    if-eqz v4, :cond_a

    .line 861
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 863
    :cond_a
    if-eqz v3, :cond_b

    .line 864
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 832
    :cond_b
    return v10

    .line 841
    :cond_c
    :try_start_2
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, "vcard":Ljava/lang/String;
    if-nez v5, :cond_f

    .line 843
    const-string/jumbo v10, "BluetoothPbapVcardManager"

    .line 844
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 843
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 845
    const/16 v10, 0xd0

    .line 860
    if-eqz v4, :cond_d

    .line 861
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 863
    :cond_d
    if-eqz v3, :cond_e

    .line 864
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 845
    :cond_e
    return v10

    .line 847
    :cond_f
    :try_start_3
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v10, :cond_10

    const-string/jumbo v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "vCard from composer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_10
    move/from16 v0, p3

    invoke-virtual {v9, v5, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 850
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->StripTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 852
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v10, :cond_11

    const-string/jumbo v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "vCard after cleanup: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_11
    invoke-virtual {v3, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v10

    if-nez v10, :cond_3

    .line 856
    const/16 v10, 0xd0

    .line 860
    if-eqz v4, :cond_12

    .line 861
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 863
    :cond_12
    if-eqz v3, :cond_13

    .line 864
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 856
    :cond_13
    return v10

    .line 859
    .end local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :catchall_0
    move-exception v10

    .line 860
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local p1    # "op":Ljavax/obex/Operation;
    :goto_1
    if-eqz v4, :cond_14

    .line 861
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 863
    :cond_14
    if-eqz v2, :cond_15

    .line 864
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 859
    :cond_15
    throw v10

    .restart local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1
.end method

.method public final getCallHistorySize(I)I
    .locals 9
    .param p1, "type"    # I

    .prologue
    .line 222
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 223
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 225
    .local v8, "size":I
    const/4 v6, 0x0

    .line 227
    .local v6, "callCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 228
    const-string/jumbo v5, "date DESC"

    .line 227
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, "callCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 235
    :cond_0
    if-eqz v6, :cond_1

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v6    # "callCursor":Landroid/database/Cursor;
    :goto_0
    const/4 v6, 0x0

    .line 240
    :cond_1
    return v8

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "CursorWindowAllocationException while getting CallHistory size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    if-eqz v6, :cond_1

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 234
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 235
    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    const/4 v6, 0x0

    .line 234
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v12, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v15, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 448
    .local v7, "contactCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 449
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 451
    .local v3, "projection":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 453
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 461
    .local v3, "projection":[Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    .line 462
    const-string/jumbo v6, "contact_id"

    .line 461
    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 464
    .local v7, "contactCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x104000e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v12, v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 468
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_3

    .line 469
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "nameIdStr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 470
    .local v10, "nameIdStr":Ljava/lang/String;
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 474
    .end local v7    # "contactCursor":Landroid/database/Cursor;
    .end local v10    # "nameIdStr":Ljava/lang/String;
    .end local v11    # "nameIdStr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 475
    .local v8, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    const-string/jumbo v4, "CursorWindowAllocationException while getting contact names"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    if-eqz v7, :cond_0

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 479
    .end local v8    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_2
    const/4 v7, 0x0

    .line 482
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 483
    .local v14, "tempListSize":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_3
    if-ge v9, v14, :cond_5

    .line 484
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 485
    .local v13, "object":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 455
    .end local v9    # "index":I
    .end local v13    # "object":Ljava/lang/String;
    .end local v14    # "tempListSize":I
    .local v2, "uri":Landroid/net/Uri;
    .local v3, "projection":[Ljava/lang/String;
    .local v7, "contactCursor":Landroid/database/Cursor;
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhoneLookupFilterUri()Landroid/net/Uri;

    move-result-object v1

    .line 456
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 457
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .local v3, "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 477
    .local v7, "contactCursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_0

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 476
    .end local v7    # "contactCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 477
    if-eqz v7, :cond_4

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 479
    const/4 v7, 0x0

    .line 476
    :cond_4
    throw v1

    .line 489
    .restart local v9    # "index":I
    .restart local v14    # "tempListSize":I
    :cond_5
    return-object v12
.end method

.method public final getContactsSize()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 188
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 189
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    const/4 v4, 0x0

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 190
    .local v6, "contactCursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 197
    if-eqz v6, :cond_0

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    return v8

    .line 193
    :cond_1
    :try_start_1
    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDistinctContactIdSize(Landroid/database/Cursor;)I
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 197
    if-eqz v6, :cond_2

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_2
    return v0

    .line 194
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 195
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "CursorWindowAllocationException while getting Contacts size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v6, :cond_3

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_3
    return v8

    .line 196
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 197
    if-eqz v6, :cond_4

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_4
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;
    .locals 5
    .param p1, "vcardType21"    # Z
    .param p2, "filter"    # [B

    .prologue
    .line 151
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcardFromProfile(Z[B)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "vcard":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    return-object v3

    .line 159
    .end local v3    # "vcard":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "number":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3    # "vcard":Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v9, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 331
    .local v10, "ownerName":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->getProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 334
    .end local v10    # "ownerName":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v10

    .line 337
    :cond_2
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 341
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 343
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_7

    .line 344
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "getPhonebookNameList, order by index"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 346
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    const/4 v4, 0x0

    .line 345
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v9, v0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_5
    if-eqz v6, :cond_6

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    :goto_1
    const/4 v6, 0x0

    .line 371
    :cond_6
    return-object v9

    .line 347
    .restart local v6    # "contactCursor":Landroid/database/Cursor;
    :cond_7
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_4

    .line 352
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "getPhonebookNameList, order by alpha"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 354
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const-string/jumbo v5, "display_name"

    const/4 v4, 0x0

    .line 353
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "contactCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 363
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 364
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "Exception while getting phonebook name list"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    if-eqz v6, :cond_6

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 361
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 362
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_3
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "CursorWindowAllocationException while getting phonebook name list"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    if-eqz v6, :cond_6

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 365
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 366
    if-eqz v6, :cond_9

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v6, 0x0

    .line 365
    :cond_9
    throw v0
.end method

.method public final getPhonebookSize(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 169
    sparse-switch p1, :sswitch_data_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 180
    .local v0, "size":I
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhonebookSize size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    return v0

    .line 171
    .end local v0    # "size":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0

    .line 174
    .end local v0    # "size":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactsSize()I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v13, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v19, "startNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v17, "onlyphoneNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 379
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 380
    .local v8, "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 381
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 378
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 384
    .end local v8    # "c":C
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "SearchOnlyNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 387
    .local v9, "contactCursor":Landroid/database/Cursor;
    const-string/jumbo v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 390
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 392
    .local v9, "contactCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_f

    .line 393
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_f

    .line 395
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 396
    .local v14, "number":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 397
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    const-string/jumbo v3, "number is null"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 429
    .end local v9    # "contactCursor":Landroid/database/Cursor;
    .end local v14    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 430
    if-eqz v9, :cond_3

    .line 431
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_3
    throw v1

    .line 400
    .restart local v9    # "contactCursor":Landroid/database/Cursor;
    .restart local v14    # "number":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v16, "onlyNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 402
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 403
    .restart local v8    # "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_5

    const/16 v1, 0x39

    if-gt v8, v1, :cond_5

    .line 404
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 401
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 407
    .end local v8    # "c":C
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 408
    .local v20, "tmpNumber":Ljava/lang/String;
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onlyNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tmpNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 410
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 414
    :cond_8
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    const-string/jumbo v3, "Adding to end name list"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_a
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 420
    .restart local v12    # "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 423
    :cond_c
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_d
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "BluetoothPbapVcardManager"

    const-string/jumbo v3, "Adding to start name list"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 430
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v16    # "onlyNumber":Ljava/lang/StringBuilder;
    .end local v20    # "tmpNumber":Ljava/lang/String;
    :cond_f
    if-eqz v9, :cond_10

    .line 431
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 435
    .local v18, "startListSize":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_12

    .line 436
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 437
    .local v15, "object":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 438
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 441
    .end local v15    # "object":Ljava/lang/String;
    :cond_12
    return-object v13
.end method

.method public final getSIMContactsSize()I
    .locals 8

    .prologue
    .line 205
    const-string/jumbo v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 207
    .local v7, "size":I
    const/4 v6, 0x0

    .line 209
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "contactCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 214
    :cond_0
    if-eqz v6, :cond_1

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1
    return v7

    .line 213
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 214
    if-eqz v6, :cond_2

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_2
    throw v0
.end method

.method public final getSIMPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v9, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v6, "allnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 291
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 293
    .local v7, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    .local v7, "contactCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 301
    :cond_0
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    .end local v7    # "contactCursor":Landroid/database/Cursor;
    .end local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 305
    if-eqz v7, :cond_1

    .line 306
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    throw v0

    .line 305
    .restart local v7    # "contactCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v7, :cond_3

    .line 306
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_3
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_5

    .line 310
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "getPhonebookNameList, order by index"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    :goto_1
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    return-object v9

    .line 311
    :cond_5
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_4

    .line 312
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v2, "getPhonebookNameList, order by alpha"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_6
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 245
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "number"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string/jumbo v0, "name"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string/jumbo v0, "presentation"

    const/4 v4, 0x2

    aput-object v0, v2, v4

    .line 249
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 250
    .local v7, "CALLS_NUMBER_COLUMN_INDEX":I
    const/4 v6, 0x1

    .line 251
    .local v6, "CALLS_NAME_COLUMN_INDEX":I
    const/4 v8, 0x2

    .line 253
    .local v8, "CALLS_NUMBER_PRESENTATION_COLUMN_INDEX":I
    const/4 v9, 0x0

    .line 254
    .local v9, "callCursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 257
    const-string/jumbo v5, "_id DESC"

    .line 256
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 258
    .local v9, "callCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 259
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x2

    .line 264
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 266
    .local v13, "numberPresentation":I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060009

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 272
    .end local v13    # "numberPresentation":I
    :cond_0
    :goto_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v9    # "callCursor":Landroid/database/Cursor;
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 276
    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v4, "CursorWindowAllocationException while loading CallHistory"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v9, :cond_1

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v10    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_2
    const/4 v9, 0x0

    .line 283
    :cond_1
    return-object v11

    .line 269
    .restart local v9    # "callCursor":Landroid/database/Cursor;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "numberPresentation":I
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_1

    .line 278
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "numberPresentation":I
    :cond_3
    if-eqz v9, :cond_1

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 277
    .end local v9    # "callCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 278
    if-eqz v9, :cond_4

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v9, 0x0

    .line 277
    :cond_4
    throw v0
.end method
