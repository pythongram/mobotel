.class public Lorg/telegram/ui/Membergram/util/OneSignalUtil;
.super Ljava/lang/Object;
.source "OneSignalUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnesignalTag(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "is_purchase_item"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->sendTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
