.class Lorg/telegram/ui/Telehgram/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/UpdateActivity;->showDeleteHistoryConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$1;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$1;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$000(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/Telehgram/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/a;->b()V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$1;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # invokes: Lorg/telegram/ui/Telehgram/UpdateActivity;->forceReload()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$100(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    .line 80
    return-void
.end method
