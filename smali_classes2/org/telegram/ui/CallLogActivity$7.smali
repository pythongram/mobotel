.class Lorg/telegram/ui/CallLogActivity$7;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 323
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$7;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "destroyAfterSelect"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    const-string v2, "returnAsResult"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    const-string v2, "onlyUsers"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 331
    .local v1, "contactsFragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v2, Lorg/telegram/ui/CallLogActivity$7$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CallLogActivity$7$1;-><init>(Lorg/telegram/ui/CallLogActivity$7;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 337
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$7;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/CallLogActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 338
    return-void
.end method
