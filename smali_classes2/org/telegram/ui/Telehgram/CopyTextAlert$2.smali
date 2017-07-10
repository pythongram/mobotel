.class Lorg/telegram/ui/Telehgram/CopyTextAlert$2;
.super Ljava/lang/Object;
.source "CopyTextAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/CopyTextAlert;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$2;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$2;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->dismiss()V

    .line 133
    return-void
.end method
