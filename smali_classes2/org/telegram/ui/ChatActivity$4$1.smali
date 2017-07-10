.class Lorg/telegram/ui/ChatActivity$4$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$4;

.field final synthetic val$view1:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$4;Landroid/view/View;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$4;

    .prologue
    .line 617
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$4$1;->this$1:Lorg/telegram/ui/ChatActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$4$1;->val$view1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 620
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$4$1;->this$1:Lorg/telegram/ui/ChatActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$4$1;->val$view1:Landroid/view/View;

    # invokes: Lorg/telegram/ui/ChatActivity;->batchDelete(Landroid/view/View;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 621
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$4$1;->this$1:Lorg/telegram/ui/ChatActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "BatchDeleteMessagesAreDeleted"

    const v5, 0x7f070666

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 622
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 623
    .local v1, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 624
    .local v2, "toastTV":Landroid/widget/TextView;
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 625
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 626
    return-void
.end method
