.class public Landroid/provider/ThemesContract;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ThemesContract$ThemesColumns;,
        Landroid/provider/ThemesContract$MixnMatchColumns;,
        Landroid/provider/ThemesContract$PreviewColumns;,
        Landroid/provider/ThemesContract$Intent;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cyanogenmod.themes"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.cyanogenmod.themes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
