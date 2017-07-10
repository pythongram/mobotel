.class Lorg/telegram/ui/ProfileActivity$9$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$9;

    .prologue
    .line 899
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 902
    if-nez p2, :cond_11

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    # invokes: Lorg/telegram/ui/ProfileActivity;->kickUser(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;I)V

    .line 905
    :cond_11
    return-void
.end method
