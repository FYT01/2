.class Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachedRequest"
.end annotation


# instance fields
.field mAttrCnt:B

.field mAttrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEnd:J

.field mStart:J

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;JJB[I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "attrCnt"    # B
    .param p7, "attrs"    # [I

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    iput-wide p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mStart:J

    .line 1941
    iput-wide p4, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mEnd:J

    .line 1942
    iput-byte p6, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mAttrCnt:B

    .line 1943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mAttrList:Ljava/util/ArrayList;

    .line 1944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$CachedRequest;->mAttrList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p7, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1939
    :cond_0
    return-void
.end method
