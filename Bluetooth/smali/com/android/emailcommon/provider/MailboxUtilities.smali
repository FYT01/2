.class public Lcom/android/emailcommon/provider/MailboxUtilities;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# static fields
.field private static final ACCOUNT_MAILBOX_CHANGE_FLAG:I = 0x200

.field public static final FIX_PARENT_KEYS_METHOD:Ljava/lang/String; = "fix_parent_keys"

.field private static final HIERARCHY_HIERARCHICAL_NAME:I = 0x3

.field private static final HIERARCHY_ID:I = 0x0

.field private static final HIERARCHY_NAME:I = 0x1

.field private static final HIERARCHY_PARENT_KEY:I = 0x2

.field private static final HIERARCHY_PROJECTION:[Ljava/lang/String;

.field public static final WHERE_PARENT_KEY_UNINITIALIZED:Ljava/lang/String; = "(parentKey isnull OR parentKey=0)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 223
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "displayName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "parentKey"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "hierarchicalName"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 222
    sput-object v0, Lcom/android/emailcommon/provider/MailboxUtilities;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMailboxConsistency(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 204
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 205
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1

    .line 207
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 208
    const-string/jumbo v6, " has inconsistent mailbox data; fixing up..."

    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "parentKey"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "accountSelector":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 214
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v1, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 201
    .end local v1    # "accountSelector":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public static endMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 190
    return-void
.end method

.method public static fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountSelector"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(parentKey isnull OR parentKey=0) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "noParentKeySelection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "noParentKeyMailboxCursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    return-void

    .line 146
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "parentServerId":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 152
    invoke-static {p0, p1, v7}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    .end local v7    # "parentServerId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    throw v1

    .line 156
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "parentKey"

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private static getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 236
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v3, p5, v4

    if-nez v3, :cond_1

    .line 237
    move-object/from16 v2, p4

    .line 244
    .local v2, "hierarchicalName":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-object v2

    .line 239
    .end local v2    # "hierarchicalName":Ljava/lang/String;
    :cond_1
    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 240
    .local v10, "parent":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v10, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "??"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 241
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 242
    iget-wide v8, v10, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    move-object v3, p0

    move-wide/from16 v4, p5

    move-object/from16 v6, p3

    .line 241
    invoke-static/range {v3 .. v9}, Lcom/android/emailcommon/provider/MailboxUtilities;->getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    const-string/jumbo v4, "/"

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "hierarchicalName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "start"    # Z

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 167
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "flags"

    if-eqz p3, :cond_1

    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 173
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    return-void

    .line 171
    :cond_1
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v2, v2, -0x201

    goto :goto_0
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentCursor"    # Landroid/database/Cursor;
    .param p2, "accountSelector"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 53
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v17, "parentValues":Landroid/content/ContentValues;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 56
    .local v14, "parentId":J
    const/4 v12, 0x0

    .line 57
    .local v12, "parentFlags":I
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 58
    .local v16, "parentType":I
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 60
    .local v13, "parentServerId":Ljava/lang/String;
    const/16 v3, 0x40

    move/from16 v0, v16

    if-gt v0, v3, :cond_0

    .line 61
    const/16 v12, 0x48

    .line 64
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    .line 66
    :cond_1
    :goto_0
    or-int/lit8 v12, v12, 0x10

    .line 72
    :cond_2
    if-eqz v13, :cond_6

    .line 73
    const/4 v3, 0x0

    aput-object v13, v6, v3

    .line 74
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parentServerId=? AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    const/4 v7, 0x0

    .line 74
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 77
    .local v8, "childCursor":Landroid/database/Cursor;
    if-nez v8, :cond_4

    return-void

    .line 65
    .end local v8    # "childCursor":Landroid/database/Cursor;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    if-nez v16, :cond_2

    goto :goto_0

    .line 79
    .restart local v8    # "childCursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    or-int/lit8 v12, v12, 0x3

    .line 81
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v9, "childValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "parentKey"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 84
    .local v10, "childId":J
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 85
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v9    # "childValues":Landroid/content/ContentValues;
    .end local v10    # "childId":J
    :catchall_0
    move-exception v3

    .line 88
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    throw v3

    .line 88
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    .end local v8    # "childCursor":Landroid/database/Cursor;
    :goto_2
    const-string/jumbo v3, "flags"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 100
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 99
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    return-void

    .line 92
    :cond_6
    const-string/jumbo v3, "parentKey"

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Mailbox with null serverId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    const-string/jumbo v5, ", type: "

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountSelector"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serverId=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    return-void

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    throw v0
.end method

.method public static setupHierarchicalNames(Landroid/content/Context;J)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 249
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v14

    .line 250
    .local v14, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v14, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v18, "values":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v14, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "accountSelector":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 255
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v10, "nameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/MailboxUtilities;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    .line 257
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 256
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 259
    .local v15, "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 261
    .local v8, "id":J
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "displayName":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v7, p0

    .line 262
    invoke-static/range {v7 .. v13}, Lcom/android/emailcommon/provider/MailboxUtilities;->getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "name":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 266
    .local v17, "oldHierarchicalName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 266
    if-nez v3, :cond_1

    .line 271
    :cond_2
    const-string/jumbo v3, "hierarchicalName"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 273
    const/4 v6, 0x0

    .line 272
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v8    # "id":J
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "oldHierarchicalName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 276
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 275
    throw v3

    .line 276
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 248
    return-void
.end method

.method public static startMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 181
    return-void
.end method
