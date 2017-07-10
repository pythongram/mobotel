.class Lorg/telegram/ui/ChannelEditActivity$8;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "chat_id"

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 431
    return-void
.end method
