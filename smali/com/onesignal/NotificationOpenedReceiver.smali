.class public Lcom/onesignal/NotificationOpenedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationOpenedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-static {p1, p2}, Lcom/onesignal/NotificationOpenedProcessor;->processFromContext(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    return-void
.end method
