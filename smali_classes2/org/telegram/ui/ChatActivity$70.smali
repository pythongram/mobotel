.class Lorg/telegram/ui/ChatActivity$70;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 5894
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 5897
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5898
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->resumeDelayedFragmentAnimation()V

    .line 5900
    :cond_11
    return-void
.end method
