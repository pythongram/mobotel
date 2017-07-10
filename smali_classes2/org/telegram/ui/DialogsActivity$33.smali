.class Lorg/telegram/ui/DialogsActivity$33;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;J)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 2601
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-wide p2, p0, Lorg/telegram/ui/DialogsActivity$33;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v2, p0, Lorg/telegram/ui/DialogsActivity$33;->val$dialog_id:J

    # invokes: Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
    invoke-static {v0, v2, v3, v1, v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;JZZ)V

    .line 2605
    return-void
.end method
