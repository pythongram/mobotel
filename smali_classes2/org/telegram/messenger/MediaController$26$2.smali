.class Lorg/telegram/messenger/MediaController$26$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$26;

.field final synthetic val$amplitude:D


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$26;D)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$26;

    .prologue
    .line 4326
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$26$2;->this$1:Lorg/telegram/messenger/MediaController$26;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$26$2;->val$amplitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 4328
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/MediaController$26$2;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->access$1100(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController$26$2;->val$amplitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4329
    return-void
.end method
