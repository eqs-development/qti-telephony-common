.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sib16Coverage"
.end annotation


# instance fields
.field public inCoverage:Z

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .line 1349
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;->inCoverage:Z

    .line 1351
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    .line 1354
    .local v0, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 1356
    .local v1, "length":I
    packed-switch v0, :pswitch_data_0

    .line 1365
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1358
    :pswitch_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1359
    .local v2, "coverage":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1360
    iput-boolean v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;->inCoverage:Z

    .line 1362
    :cond_0
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsol SIB16 coverage status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;->inCoverage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    goto :goto_2

    .line 1365
    .end local v2    # "coverage":B
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sib16Coverage: Unexpected Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1368
    .end local v0    # "type":I
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected buffer format when parsing for Sib16Coverage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_2
    goto :goto_0

    .line 1372
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
