.class Lorg/telegram/ui/ProfileNotificationsActivity$3$2;
.super Ljava/lang/Object;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileNotificationsActivity$3;

    .prologue
    .line 337
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 343
    :cond_1d
    return-void
.end method
