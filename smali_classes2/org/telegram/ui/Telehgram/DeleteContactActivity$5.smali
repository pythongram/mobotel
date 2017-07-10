.class Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 490
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "var1"    # Landroid/widget/AbsListView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 496
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 499
    const/4 v1, 0x1

    .line 500
    .local v1, "bool":Z
    const/4 v2, 0x1

    if-ne p2, v2, :cond_d

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 504
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 505
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v0

    .line 506
    .local v0, "adapter":Lorg/telegram/ui/Adapters/ContactsAdapter;
    if-nez p2, :cond_1e

    .line 507
    const/4 v1, 0x0

    .line 510
    :cond_1e
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setIsScrolling(Z)V

    .line 513
    .end local v0    # "adapter":Lorg/telegram/ui/Adapters/ContactsAdapter;
    :cond_21
    return-void
.end method
