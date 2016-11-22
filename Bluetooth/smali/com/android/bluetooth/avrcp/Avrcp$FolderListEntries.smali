.class Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderListEntries"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttrCnt:I

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

.field mNumAttr:I

.field mScope:B

.field mStart:J

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;BJJII[ILjava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "scope"    # B
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "attrCnt"    # I
    .param p8, "numAttr"    # I
    .param p9, "attrs"    # [I
    .param p10, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    iput-byte p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mScope:B

    .line 1961
    iput-wide p3, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mStart:J

    .line 1962
    iput-wide p5, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mEnd:J

    .line 1963
    iput p7, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAttrCnt:I

    .line 1964
    iput p8, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mNumAttr:I

    .line 1965
    iput-object p10, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAddress:Ljava/lang/String;

    .line 1967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAttrList:Ljava/util/ArrayList;

    .line 1968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p8, :cond_0

    .line 1969
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$FolderListEntries;->mAttrList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p9, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1959
    :cond_0
    return-void
.end method
