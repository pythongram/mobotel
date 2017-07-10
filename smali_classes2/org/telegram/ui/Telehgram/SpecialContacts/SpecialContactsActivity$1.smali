.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SpecialContactsActivity.java"


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
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 53
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->finishFragment()V

    .line 60
    :goto_8
    return-void

    .line 55
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    new-instance v1, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_8

    .line 58
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    new-instance v1, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_8
.end method
