.class Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lorg/apache/commons/io/FileDeleteStrategy;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileDeleteStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForceFileDeleteStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "Force"

    invoke-direct {p0, v0}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)Z
    .locals 1
    .param p1, "fileToDelete"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method