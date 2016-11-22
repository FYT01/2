.class public Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vCard"
.end annotation


# instance fields
.field private mBtUcis:[Ljava/lang/String;

.field private mBtUids:[Ljava/lang/String;

.field private mEmailAddresses:[Ljava/lang/String;

.field private mEnvLevel:I

.field private mFormattedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:[Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    .line 84
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 85
    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 86
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 87
    if-eqz p2, :cond_2

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 88
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 89
    if-eqz p4, :cond_0

    .line 90
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 83
    :cond_0
    return-void

    .line 86
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 87
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "btUids"    # [Ljava/lang/String;
    .param p6, "btUcis"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 125
    if-eqz p1, :cond_2

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 126
    if-eqz p2, :cond_3

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 128
    if-eqz p4, :cond_0

    .line 129
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 131
    :cond_0
    if-eqz p6, :cond_1

    .line 132
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    .line 123
    :cond_1
    return-void

    .line 125
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    .line 126
    .end local p1    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 144
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 145
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 146
    if-eqz p3, :cond_0

    .line 147
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 142
    :cond_0
    return-void

    .line 144
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;
    .param p4, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 103
    const-string/jumbo v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 105
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 106
    if-eqz p3, :cond_0

    .line 107
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 101
    :cond_0
    return-void

    .line 104
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public static parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .locals 14
    .param p0, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p1, "envLevel"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "formattedName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 256
    .local v1, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 257
    .local v11, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 258
    .local v8, "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 259
    .local v7, "btUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 261
    .local v6, "btUcis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v9

    .line 263
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "formattedName":Ljava/lang/String;
    .end local v6    # "btUcis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "btUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "line":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "END:VCARD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 264
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 265
    const-string/jumbo v0, "N:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_1

    .line 268
    aget-object v1, v10, v5

    .line 323
    .end local v10    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 270
    .restart local v10    # "parts":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    .local v1, "name":Ljava/lang/String;
    goto :goto_1

    .line 272
    .end local v1    # "name":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "FN:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 274
    .restart local v10    # "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_3

    .line 275
    aget-object v2, v10, v5

    .local v2, "formattedName":Ljava/lang/String;
    goto :goto_1

    .line 277
    .end local v2    # "formattedName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, ""

    .restart local v2    # "formattedName":Ljava/lang/String;
    goto :goto_1

    .line 279
    .end local v2    # "formattedName":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "TEL:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10    # "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_0

    .line 282
    aget-object v0, v10, v5

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "subParts":[Ljava/lang/String;
    if-nez v11, :cond_5

    .line 284
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    :cond_5
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v12, v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "subParts":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "EMAIL:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 292
    .restart local v10    # "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_0

    .line 293
    aget-object v0, v10, v5

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 294
    .restart local v12    # "subParts":[Ljava/lang/String;
    if-nez v8, :cond_7

    .line 295
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    :cond_7
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v12, v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "subParts":[Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "X-BT-UCI:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 302
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 303
    .restart local v10    # "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_0

    .line 304
    aget-object v0, v10, v5

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 305
    .restart local v12    # "subParts":[Ljava/lang/String;
    if-nez v6, :cond_9

    .line 306
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    :cond_9
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v12, v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 311
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "subParts":[Ljava/lang/String;
    :cond_a
    const-string/jumbo v0, "X-BT-UID:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 313
    .restart local v10    # "parts":[Ljava/lang/String;
    array-length v0, v10

    if-ne v0, v13, :cond_0

    .line 314
    aget-object v0, v10, v5

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 315
    .restart local v12    # "subParts":[Ljava/lang/String;
    if-nez v7, :cond_b

    .line 316
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    :cond_b
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v12, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 325
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "subParts":[Ljava/lang/String;
    :cond_c
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 326
    if-nez v11, :cond_d

    move-object v3, v4

    .line 328
    :goto_2
    if-nez v8, :cond_e

    :goto_3
    move v5, p1

    .line 325
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 327
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_2

    .line 329
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_3
.end method

.method private setPhoneNumbers([Ljava/lang/String;)V
    .locals 8
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 151
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 152
    array-length v5, p1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 154
    aget-object v5, p1, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "networkNumber":Ljava/lang/String;
    aget-object v5, p1, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "strippedNumber":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 162
    .local v0, "alpha":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 163
    const-string/jumbo v5, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 165
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v6, p1, v1

    aput-object v6, v5, v1

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aput-object v3, v5, v1

    goto :goto_1

    .line 150
    .end local v0    # "alpha":Ljava/lang/Boolean;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "networkNumber":Ljava/lang/String;
    .end local v4    # "strippedNumber":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    .line 219
    const-string/jumbo v5, "BEGIN:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v5, "VERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    const-string/jumbo v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 223
    const-string/jumbo v5, "FN:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 226
    const-string/jumbo v5, "N:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 229
    .local v3, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v8, "TEL:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 233
    .local v2, "emailAddress":Ljava/lang/String;
    const-string/jumbo v8, "EMAIL:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "emailAddress":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    .line 237
    .local v1, "btUid":Ljava/lang/String;
    const-string/jumbo v8, "X-BT-UID:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 239
    .end local v1    # "btUid":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v0, v5, v4

    .line 241
    .local v0, "btUci":Ljava/lang/String;
    const-string/jumbo v7, "X-BT-UCI:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 243
    .end local v0    # "btUci":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "END:VCARD"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method

.method public getEmailAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No Recipient Email Address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnvLevel()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    return v0
.end method

.method public getFirstBtUci()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstBtUid()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstEmail()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    return-object v0
.end method
