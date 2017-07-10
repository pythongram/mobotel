.class Lorg/telegram/ui/ChatActivity$21;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 2213
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didLongPressedOnSubDialog(I)V
    .registers 6
    .param p1, "did"    # I

    .prologue
    const/4 v3, 0x0

    .line 2239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2240
    .local v0, "args":Landroid/os/Bundle;
    if-lez p1, :cond_18

    .line 2241
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2246
    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2247
    return-void

    .line 2243
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-int v2, p1

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2244
    const-string v1, "chat_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d
.end method

.method public didPressedOnBtn(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateChatDialogsView(Z)V
    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 2236
    return-void
.end method

.method public didPressedOnSubDialog(I)V
    .registers 9
    .param p1, "did"    # I

    .prologue
    const/4 v6, 0x1

    .line 2215
    const/4 v3, 0x1

    .line 2216
    .local v3, "z":Z
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatDialogsView;->needRefresh(Z)V

    .line 2217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2218
    .local v0, "args":Landroid/os/Bundle;
    if-lez p1, :cond_34

    .line 2219
    const-string v4, "user_id"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2223
    :goto_17
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    if-eqz v4, :cond_20

    .line 2224
    const-string v4, "show_quickBar"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2226
    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 2227
    .local v1, "chatActivity":Lorg/telegram/ui/ChatActivity;
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 2228
    .local v2, "chatActivity2":Lorg/telegram/ui/ActionBar/BaseFragment;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-eqz v4, :cond_2f

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    if-nez v4, :cond_30

    .line 2229
    :cond_2f
    const/4 v3, 0x0

    .line 2231
    :cond_30
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 2232
    return-void

    .line 2221
    .end local v1    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v2    # "chatActivity2":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_34
    const-string v4, "chat_id"

    neg-int v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_17
.end method
