.class Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;
.super Ljava/lang/Object;
.source "FavoriteMessagesActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 76
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->access$000(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    .local v1, "did":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    if-lez v1, :cond_2c

    .line 79
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    :goto_1a
    const-string v3, "just_fav"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 85
    .local v2, "fragment":Lorg/telegram/ui/ChatActivity;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 86
    return-void

    .line 81
    .end local v2    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_2c
    const-string v3, "chat_id"

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a
.end method
