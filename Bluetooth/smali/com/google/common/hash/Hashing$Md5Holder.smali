.class Lcom/google/common/hash/Hashing$Md5Holder;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Md5Holder"
.end annotation


# static fields
.field static final MD5:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string/jumbo v1, "MD5"

    const-string/jumbo v2, "Hashing.md5()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    .line 185
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
