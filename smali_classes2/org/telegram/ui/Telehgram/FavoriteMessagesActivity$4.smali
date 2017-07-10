.class Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;
.super Ljava/lang/Object;
.source "FavoriteMessagesActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 91
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Delete"

    const v4, 0x7f0701c7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 94
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 118
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 119
    return v5
.end method
