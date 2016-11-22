.class Lcom/android/bluetooth/avrcp/Avrcp$Metadata;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;

.field private trackTitle:Ljava/lang/String;

.field private tracknum:J


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->tracknum:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->tracknum:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    const/4 v0, 0x0

    .line 1981
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1982
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    .line 1983
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    .line 1984
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    .line 1985
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    .line 1986
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->tracknum:J

    .line 1981
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    const-string/jumbo v1, " genre="

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    const-string/jumbo v1, " tracknum="

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->tracknum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1991
    const-string/jumbo v1, "]"

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
