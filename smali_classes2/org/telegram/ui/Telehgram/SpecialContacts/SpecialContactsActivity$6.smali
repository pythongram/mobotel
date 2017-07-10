.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->access$100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;

    invoke-virtual {v2, p3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "user":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 235
    .end local v0    # "user":Ljava/lang/Object;
    :goto_12
    return-void

    .line 233
    .restart local v0    # "user":Ljava/lang/Object;
    :cond_13
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .end local v0    # "user":Ljava/lang/Object;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 234
    .local v1, "userName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_12
.end method
