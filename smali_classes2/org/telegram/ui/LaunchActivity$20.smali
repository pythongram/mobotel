.class Lorg/telegram/ui/LaunchActivity$20;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$waitingForLocation:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2196
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$20;->val$waitingForLocation:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2199
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2217
    :cond_a
    :goto_a
    return-void

    .line 2202
    :cond_b
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2203
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2206
    new-instance v0, Lorg/telegram/ui/LocationActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LocationActivity;-><init>()V

    .line 2207
    .local v0, "fragment":Lorg/telegram/ui/LocationActivity;
    new-instance v2, Lorg/telegram/ui/LaunchActivity$20$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LaunchActivity$20$1;-><init>(Lorg/telegram/ui/LaunchActivity$20;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 2216
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_a
.end method
