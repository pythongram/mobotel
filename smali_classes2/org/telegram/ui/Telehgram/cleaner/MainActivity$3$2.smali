.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 271
    new-instance v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;Lorg/telegram/ui/Telehgram/cleaner/MainActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    return-void
.end method
