.class Lorg/telegram/messenger/NotificationsController$12;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 831
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$12;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$12;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 834
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$12;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$1100(Lorg/telegram/messenger/NotificationsController;)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$12;->val$count:I

    if-ne v0, v1, :cond_b

    .line 839
    :goto_a
    return-void

    .line 837
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$12;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$12;->val$count:I

    # setter for: Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$1102(Lorg/telegram/messenger/NotificationsController;I)I

    .line 838
    iget v0, p0, Lorg/telegram/messenger/NotificationsController$12;->val$count:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationBadge;->applyCount(I)Z

    goto :goto_a
.end method
