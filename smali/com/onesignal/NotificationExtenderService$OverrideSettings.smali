.class public Lcom/onesignal/NotificationExtenderService$OverrideSettings;
.super Ljava/lang/Object;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/NotificationExtenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideSettings"
.end annotation


# instance fields
.field public androidNotificationId:Ljava/lang/Integer;

.field public extender:Landroid/support/v4/app/NotificationCompat$Extender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .registers 3
    .param p1, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .prologue
    .line 68
    if-nez p1, :cond_3

    .line 73
    :cond_2
    :goto_2
    return-void

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    goto :goto_2
.end method
