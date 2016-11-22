.class Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mCharsetId:S

.field private mDisplayableName:[B

.field private mDisplayableNameLength:S

.field private mEntryLength:S

.field private mFeatureMask:[I

.field private mIsAvailable:Z

.field private mIsFocussed:Z

.field private mIsRemoteAddressable:Z

.field private mItemLength:S

.field private mItemType:B

.field private mMajorPlayerType:B

.field private mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

.field private mPlayState:B

.field private mPlayerId:S

.field private mPlayerPackageName:Ljava/lang/String;

.field private mPlayerSubType:I

.field private mTrackNumber:J

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;Z[I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "playerId"    # S
    .param p3, "majorPlayerType"    # B
    .param p4, "playerSubType"    # I
    .param p5, "playState"    # B
    .param p6, "charsetId"    # S
    .param p7, "displayableNameLength"    # S
    .param p8, "displayableName"    # [B
    .param p9, "playerPackageName"    # Ljava/lang/String;
    .param p10, "isRemoteAddressable"    # Z
    .param p11, "featureMask"    # [I

    .prologue
    .line 5155
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5160
    iput-short p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    .line 5161
    iput-byte p3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    .line 5162
    iput p4, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    .line 5163
    iput-byte p5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    .line 5164
    iput-short p6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    .line 5165
    iput-short p7, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    .line 5166
    iput-object p9, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    .line 5167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    .line 5168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    .line 5169
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemType:B

    .line 5170
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    .line 5171
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    .line 5172
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mTrackNumber:J

    .line 5173
    iput-boolean p10, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsRemoteAddressable:Z

    .line 5174
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 5175
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v2, p11, v0

    aput v2, v1, v0

    .line 5174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5178
    :cond_0
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    .line 5179
    const/4 v0, 0x0

    :goto_1
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v1, :cond_1

    .line 5180
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v2, p8, v0

    aput-byte v2, v1, v0

    .line 5179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5183
    :cond_1
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemLength:S

    .line 5187
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemLength:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    .line 5159
    return-void
.end method


# virtual methods
.method public GetPlayerAvailablility()Z
    .locals 1

    .prologue
    .line 5220
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    return v0
.end method

.method public GetPlayerFocus()Z
    .locals 1

    .prologue
    .line 5224
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    return v0
.end method

.method public IsPlayerBrowsable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5228
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 5230
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is Browsable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    const/4 v0, 0x1

    return v0

    .line 5233
    :cond_0
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not Browsable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    return v3
.end method

.method public IsPlayerBrowsableWhenAddressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5239
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 5241
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is Browsable only when addressed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    const/4 v0, 0x1

    return v0

    .line 5244
    :cond_0
    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is always Browsable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    return v3
.end method

.method public IsRemoteAddressable()Z
    .locals 1

    .prologue
    .line 5251
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsRemoteAddressable:Z

    return v0
.end method

.method public RetrievePlayerEntryLength()I
    .locals 1

    .prologue
    .line 5264
    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    return v0
.end method

.method public RetrievePlayerId()S
    .locals 1

    .prologue
    .line 5256
    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return v0
.end method

.method public RetrievePlayerItemEntry()[B
    .locals 6

    .prologue
    .line 5268
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    new-array v1, v3, [B

    .line 5269
    .local v1, "playerEntry":[B
    const/4 v2, 0x0

    .line 5271
    .local v2, "position":I
    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemType:B

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    .line 5272
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5273
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5274
    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5275
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 5276
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    mul-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5278
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-byte v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    invoke-static {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap13(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5279
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    .line 5280
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5282
    :cond_1
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5283
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5284
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5285
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5286
    const/4 v0, 0x0

    :goto_2
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v3, :cond_2

    .line 5287
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 5286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5289
    :cond_2
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    if-eq v2, v3, :cond_3

    .line 5290
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR populating PlayerItemEntry: position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mEntryLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    :cond_3
    return-object v1
.end method

.method public RetrievePlayerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public SetPlayerAvailablility(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 5212
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    .line 5211
    return-void
.end method

.method public SetPlayerFocus(Z)V
    .locals 0
    .param p1, "isFocussed"    # Z

    .prologue
    .line 5216
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsFocussed:Z

    .line 5215
    return-void
.end method

.method public getPlayerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5208
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method
