.class public Landroid/graphics/TypefaceHook;
.super Lmiui/patchrom/ClassHook;
.source "TypefaceHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Landroid/graphics/TypefaceHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/TypefaceHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Landroid/graphics/Typeface;

    invoke-direct {p0, v0}, Lmiui/patchrom/ClassHook;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method static makeFontFamily(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 7
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 23
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v5, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 25
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v4, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    const-string v5, "/system/fonts"

    const-string v6, "/data/system/theme/fonts"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "themeFontName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    iput-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v4, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v5, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v6, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 31
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    .end local v3    # "themeFontName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected handle()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/TypefaceHook;->makeFontFamily(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    .line 20
    return-void
.end method
