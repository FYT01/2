.class public Lcom/android/bluetooth/map/SmsMmsContacts;
.super Ljava/lang/Object;
.source "SmsMmsContacts.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final ADDRESS_PROJECTION:[Ljava/lang/String;

.field private static final ADDRESS_URI:Landroid/net/Uri;

.field private static final COL_ADDR_ADDR:I

.field private static final COL_ADDR_ID:I

.field private static final COL_CONTACT_ID:I

.field private static final COL_CONTACT_NAME:I

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_SEL_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field private static final TAG:Ljava/lang/String; = "SmsMmsContacts"


# instance fields
.field private final mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapContact;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "canonical-addresses"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "address"

    aput-object v1, v0, v3

    .line 48
    sput-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 50
    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ID:I

    .line 53
    sget-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 52
    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 57
    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_ID:I

    .line 60
    sget-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 59
    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_NAME:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method private fillPhoneCache(Landroid/content/ContentResolver;)V
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v1, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, "c":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 110
    const/4 v10, 0x0

    .line 111
    .local v10, "size":I
    if-eqz v7, :cond_0

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 115
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    .line 120
    .end local v10    # "size":I
    :goto_0
    if-eqz v7, :cond_3

    .line 123
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    sget v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ID:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 126
    .local v8, "id":J
    sget v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "addr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 132
    .end local v6    # "addr":Ljava/lang/String;
    .end local v8    # "id":J
    :catchall_0
    move-exception v0

    .line 133
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    throw v0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 130
    :cond_3
    :try_start_1
    const-string/jumbo v0, "SmsMmsContacts"

    const-string/jumbo v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_5
    return-void
.end method

.method public static getPhoneNumberUncached(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 83
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 89
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_0
    return-object v0

    .line 87
    :cond_1
    :try_start_1
    const-string/jumbo v0, "SmsMmsContacts"

    const-string/jumbo v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_2
    return-object v4

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    throw v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    :cond_1
    return-void
.end method

.method public getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/bluetooth/map/MapContact;
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v0

    return-object v0
.end method

.method public getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;
    .locals 20
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "contactNameFilter"    # Ljava/lang/String;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/MapContact;

    .line 150
    .local v9, "contact":Lcom/android/bluetooth/map/MapContact;
    if-eqz v9, :cond_3

    .line 151
    invoke-virtual {v9}, Lcom/android/bluetooth/map/MapContact;->getId()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-gez v2, :cond_0

    .line 152
    const/4 v2, 0x0

    return-object v2

    .line 154
    :cond_0
    if-nez p3, :cond_1

    .line 155
    return-object v9

    .line 158
    :cond_1
    const-string/jumbo v2, "*"

    const-string/jumbo v4, ".*"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, "searchString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ".*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-static {v14}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 161
    .local v13, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v9}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    return-object v9

    .line 164
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 169
    .end local v13    # "p":Ljava/util/regex/Pattern;
    .end local v14    # "searchString":Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 170
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "in_visible_group=1"

    .line 171
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 172
    .local v6, "selectionArgs":[Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "AND display_name like ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "*"

    const-string/jumbo v7, "%"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v6, v4

    .line 177
    :cond_4
    sget-object v4, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_6

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    sget v2, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_ID:I

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 182
    .local v10, "id":J
    sget v2, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_NAME:I

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "name":Ljava/lang/String;
    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/map/MapContact;->create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v9

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v9    # "contact":Lcom/android/bluetooth/map/MapContact;
    .end local v10    # "id":J
    .end local v12    # "name":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_5
    return-object v9

    .line 186
    .restart local v9    # "contact":Lcom/android/bluetooth/map/MapContact;
    :cond_6
    const-wide/16 v16, -0x1

    const/4 v2, 0x0

    :try_start_1
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/map/MapContact;->create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v9

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    const/4 v9, 0x0

    .local v9, "contact":Lcom/android/bluetooth/map/MapContact;
    goto :goto_0

    .line 190
    .local v9, "contact":Lcom/android/bluetooth/map/MapContact;
    :catchall_0
    move-exception v2

    .line 191
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_7
    throw v2
.end method

.method public getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "id"    # J

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    return-object v0

    .line 74
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/SmsMmsContacts;->fillPhoneCache(Landroid/content/ContentResolver;)V

    .line 75
    iget-object v1, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
