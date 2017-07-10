.class Lorg/telegram/ui/Telehgram/OnlineContactsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "OnlineContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 162
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->finishFragment()V

    .line 168
    :cond_8
    :goto_8
    return-void

    .line 164
    :cond_9
    if-nez p1, :cond_8

    .line 165
    new-instance v0, Lorg/telegram/messenger/ContactsController;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController;-><init>()V

    .line 166
    .local v0, "contactsController":Lorg/telegram/messenger/ContactsController;
    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_8
.end method
