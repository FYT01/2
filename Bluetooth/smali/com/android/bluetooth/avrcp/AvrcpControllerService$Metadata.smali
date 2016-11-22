.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;
.super Ljava/lang/Object;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private attributesFetchedId:I

.field private genre:Ljava/lang/String;

.field private playStatus:B

.field private playTime:J

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

.field private totalTrackLen:J

.field private totalTrackNum:J

.field private trackNum:J

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->attributesFetchedId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->genre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playStatus:B

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackLen:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackNum:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackNum:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->attributesFetchedId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->genre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;B)B
    .locals 0

    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playStatus:B

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playTime:J

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackLen:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackNum:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackNum:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->resetMetaData()V

    .line 293
    return-void
.end method


# virtual methods
.method public resetMetaData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xff

    .line 297
    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->artist:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackTitle:Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->albumTitle:Ljava/lang/String;

    .line 300
    const-string/jumbo v0, "NOT_SUPPORTED"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->genre:Ljava/lang/String;

    .line 301
    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackNum:J

    .line 302
    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackNum:J

    .line 303
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playStatus:B

    .line 304
    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playTime:J

    .line 305
    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackLen:J

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->attributesFetchedId:I

    .line 296
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata [artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " albumTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->albumTitle:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, " genre= "

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->genre:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, " trackNum= "

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->trackNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, " cur_time: "

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    const-string/jumbo v1, " total_time = "

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->totalTrackLen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, "playStatus="

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->playStatus:B

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, "]"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
