.class Lorg/telegram/ui/Components/ShareAlert$5;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 282
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_75

    .line 284
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v3

    if-eq v2, v3, :cond_49

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # invokes: Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I
    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1802(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 287
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->notifyDataSetChanged()V

    .line 289
    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    const-string v3, "NoResult"

    const v4, 0x7f070368

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 303
    :cond_63
    :goto_63
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 304
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 306
    :cond_74
    return-void

    .line 293
    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v3

    if-eq v2, v3, :cond_63

    .line 294
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # invokes: Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    .line 295
    .local v1, "top":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    const-string v3, "NoChats"

    const v4, 0x7f070354

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->notifyDataSetChanged()V

    .line 298
    if-lez v1, :cond_63

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_63
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 278
    return-void
.end method
