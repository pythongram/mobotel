.class Lorg/telegram/ui/LanguageSelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 88
    :cond_33
    return-void
.end method

.method public onSearchExpand()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 77
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 100
    :cond_30
    return-void
.end method
