.class public Lorg/telegram/ui/Telehgram/NotificationExtenderBareBonesExample;
.super Lcom/onesignal/NotificationExtenderService;
.source "NotificationExtenderBareBonesExample.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
    .registers 3
    .param p1, "receivedResult"    # Lcom/onesignal/OSNotificationReceivedResult;

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method
