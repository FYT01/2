.class public final Lcom/android/mail/providers/UIProvider$AttachmentRendition;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentRendition"
.end annotation


# static fields
.field public static final BEST:I = 0x1

.field private static final BEST_STRING:Ljava/lang/String; = "BEST"

.field public static final PREFERRED_RENDITIONS:[I

.field public static final SIMPLE:I = 0x0

.field private static final SIMPLE_STRING:Ljava/lang/String; = "SIMPLE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2193
    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider$AttachmentRendition;->PREFERRED_RENDITIONS:[I

    .line 2175
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRendition(Ljava/lang/String;)I
    .locals 4
    .param p0, "rendition"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2196
    const-string/jumbo v0, "SIMPLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    return v3

    .line 2198
    :cond_0
    const-string/jumbo v0, "BEST"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    return v2

    .line 2202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown rendition %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "rendition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2206
    if-ne p0, v2, :cond_0

    .line 2207
    const-string/jumbo v0, "BEST"

    return-object v0

    .line 2208
    :cond_0
    if-nez p0, :cond_1

    .line 2209
    const-string/jumbo v0, "SIMPLE"

    return-object v0

    .line 2212
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown rendition %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
