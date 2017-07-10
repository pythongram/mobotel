.class Lorg/telegram/ui/ContactsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # setter for: Lorg/telegram/ui/ContactsActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ContactsActivity;->access$002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # setter for: Lorg/telegram/ui/ContactsActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ContactsActivity;->access$202(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string v1, "NoContacts"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onSearchExpand()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ContactsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 188
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 6
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x1

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v1

    if-nez v1, :cond_a

    .line 221
    :goto_9
    return-void

    .line 207
    :cond_a
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # setter for: Lorg/telegram/ui/ContactsActivity;->searchWas:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ContactsActivity;->access$202(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->notifyDataSetChanged()V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 216
    :cond_50
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    const-string v2, "NoResult"

    const v3, 0x7f070368

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 220
    :cond_6a
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_9
.end method
