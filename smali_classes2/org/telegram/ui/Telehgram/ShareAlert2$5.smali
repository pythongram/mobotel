.class Lorg/telegram/ui/Telehgram/ShareAlert2$5;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 315
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->nameTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1400(Lorg/telegram/ui/Telehgram/ShareAlert2;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_75

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v3

    if-eq v2, v3, :cond_49

    .line 318
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->getCurrentTop()I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1600(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v3

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1502(Lorg/telegram/ui/Telehgram/ShareAlert2;I)I

    .line 319
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 320
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->notifyDataSetChanged()V

    .line 322
    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1700(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1700(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    const-string v3, "NoResult"

    const v4, 0x7f070368

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 336
    :cond_63
    :goto_63
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 337
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 339
    :cond_74
    return-void

    .line 326
    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->listAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$600(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    move-result-object v3

    if-eq v2, v3, :cond_63

    .line 327
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->getCurrentTop()I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1600(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v1

    .line 328
    .local v1, "top":I
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1700(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    const-string v3, "NoChats"

    const v4, 0x7f070354

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->listAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$600(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 330
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->listAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$600(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->notifyDataSetChanged()V

    .line 331
    if-lez v1, :cond_63

    .line 332
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$5;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

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
    .line 306
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 311
    return-void
.end method
