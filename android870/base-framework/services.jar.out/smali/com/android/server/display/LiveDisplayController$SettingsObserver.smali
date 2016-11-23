.class final Lcom/android/server/display/LiveDisplayController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

.field private final DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {p1}, Lcom/android/server/display/LiveDisplayController;->-get4(Lcom/android/server/display/LiveDisplayController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    const-string v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    const-string v0, "display_temperature_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    const-string v0, "display_auto_outdoor_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    const-string v0, "display_low_power"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    const-string v0, "display_color_enhance"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    const-string v0, "display_color_adjustment"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v0}, Lcom/android/server/display/LiveDisplayController;->-wrap5(Lcom/android/server/display/LiveDisplayController;)V

    return-void
.end method

.method public register(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v1}, Lcom/android/server/display/LiveDisplayController;->-get1(Lcom/android/server/display/LiveDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method