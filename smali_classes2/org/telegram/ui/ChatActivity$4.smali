.class Lorg/telegram/ui/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
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
    .line 592
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 595
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 596
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->processRowSelect(Landroid/view/View;)V
    invoke-static {v5, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 631
    :cond_12
    :goto_12
    return-void

    .line 600
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v5, p1, v8}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    goto :goto_12

    .line 602
    :cond_29
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 603
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->fastDelete(Landroid/view/View;)V
    invoke-static {v5, p1}, Lorg/telegram/ui/ChatActivity;->access$1300(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    goto :goto_12

    .line 604
    :cond_37
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 605
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fromMessage:I
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1400(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7a

    .line 606
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->fillFromMessage(Landroid/view/View;)V
    invoke-static {v5, p1}, Lorg/telegram/ui/ChatActivity;->access$1500(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 607
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "BatchDeleteFirstSelected"

    const v7, 0x7f070665

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 608
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 609
    .local v2, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 610
    .local v3, "toastTV":Landroid/widget/TextView;
    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 611
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 613
    .end local v1    # "toast":Landroid/widget/Toast;
    .end local v2    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v3    # "toastTV":Landroid/widget/TextView;
    :cond_7a
    move-object v4, p1

    .line 614
    .local v4, "view1":Landroid/view/View;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v5, "BatchDeleteAreYouSureDeleteMessages"

    const v6, 0x7f070663

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 616
    const-string v5, "AppName"

    const v6, 0x7f070092

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 617
    const-string v5, "OK"

    const v6, 0x7f0703d4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChatActivity$4$1;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/ChatActivity$4$1;-><init>(Lorg/telegram/ui/ChatActivity$4;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 628
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_12
.end method
