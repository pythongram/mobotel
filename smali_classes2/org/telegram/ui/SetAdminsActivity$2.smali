.class Lorg/telegram/ui/SetAdminsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_49

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listAdapter:Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 126
    :cond_49
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    .line 129
    :cond_5a
    return-void
.end method

.method public onSearchExpand()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7e

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_4c

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;

    move-result-object v1

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    :cond_4c
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eq v1, v2, :cond_7e

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 145
    :cond_7e
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    .line 148
    :cond_8f
    return-void
.end method
