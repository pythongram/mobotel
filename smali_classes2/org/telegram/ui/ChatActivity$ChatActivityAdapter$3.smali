.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10554
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressUrl(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10557
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 10558
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 10566
    :cond_16
    :goto_16
    return-void

    .line 10559
    :cond_17
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 10560
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 10561
    .local v0, "fragment":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 10562
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_16

    .line 10563
    .end local v0    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_2f
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 10564
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2, p1, v3, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V

    goto :goto_16
.end method
