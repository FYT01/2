.class Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAttr"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

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

.field mUid:J

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p3, "uid"    # J
    .param p5, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2843
    .local p2, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2845
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAttrList:Ljava/util/ArrayList;

    .line 2846
    iput-wide p3, p0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mUid:J

    .line 2847
    iput-object p5, p0, Lcom/android/bluetooth/avrcp/Avrcp$ItemAttr;->mAddress:Ljava/lang/String;

    .line 2844
    return-void
.end method
