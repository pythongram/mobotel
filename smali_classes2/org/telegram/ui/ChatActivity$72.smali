.class Lorg/telegram/ui/ChatActivity$72;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$channel_id:I

.field final synthetic val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 6399
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$72;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$72;->val$bundle:Landroid/os/Bundle;

    iput p4, p0, Lorg/telegram/ui/ChatActivity$72;->val$channel_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 6402
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    .line 6403
    .local v0, "parentLayout":Lorg/telegram/ui/ActionBar/ActionBarLayout;
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$72;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_15

    .line 6404
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$72;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 6406
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6407
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$72;->val$bundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 6408
    new-instance v1, Lorg/telegram/ui/ChatActivity$72$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$72$1;-><init>(Lorg/telegram/ui/ChatActivity$72;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6414
    return-void
.end method
