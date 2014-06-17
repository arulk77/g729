
function ads_async_fifo_config(this_block)

  % Revision History:
  %
  %   16-Jun-2014  (18:21 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/aruls/projects/phd/g729/design/fifo/ads_async_fifo.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('ads_async_fifo');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

  this_block.addSimulinkInport('sys_rst_n');
  this_block.addSimulinkInport('hpf_audio_sample');
  this_block.addSimulinkInport('hpf_smp_valid');
  this_block.addSimulinkInport('ldb_read_en');

  this_block.addSimulinkOutport('aff_data_count');
  this_block.addSimulinkOutport('aff_data_full');
  this_block.addSimulinkOutport('aff_data_empty');
  this_block.addSimulinkOutport('aff_read_data');

  aff_data_full_port = this_block.port('aff_data_full');
  aff_data_full_port.setType('UFix_1_0');
  aff_data_full_port.useHDLVector(false);
  aff_data_empty_port = this_block.port('aff_data_empty');
  aff_data_empty_port.setType('UFix_1_0');
  aff_data_empty_port.useHDLVector(false);
  aff_read_data_port = this_block.port('aff_read_data');
  aff_read_data_port.setType('XFloat_8_24');
  aff_data_count_port = this_block.port('aff_data_count');
  aff_data_count_port.setType('UFix_10_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('sys_rst_n').width ~= 1);
      this_block.setError('Input data type for port "sys_rst_n" must have width=1.');
    end

    this_block.port('sys_rst_n').useHDLVector(false);

    % (!) Port 'hpf_audio_sample' appeared to have dynamic type in the HDL -- please add type checking as appropriate;
    if (this_block.port('hpf_audio_sample').width ~= 32);
      this_block.setError('Input data type for port "hpf_audio_sample" must have width=32.');
    end

    if (this_block.port('hpf_smp_valid').width ~= 1);
      this_block.setError('Input data type for port "hpf_smp_valid" must have width=1.');
    end

    this_block.port('hpf_smp_valid').useHDLVector(false);

    if (this_block.port('ldb_read_en').width ~= 1);
      this_block.setError('Input data type for port "ldb_read_en" must have width=1.');
    end

    this_block.port('ldb_read_en').useHDLVector(false);

  % (!) Port 'aff_data_count' appeared to have dynamic type in the HDL
  % --- you must add an appropriate type setting for this port
  if (this_block.port('aff_data_count').width ~= 10);
      this_block.setError('Input data type for port "aff_data_count" must have width=10.');
  end

  % (!) Port 'aff_read_data' appeared to have dynamic type in the HDL
  % --- you must add an appropriate type setting for this port
  if (this_block.port('aff_read_data').width ~= 32);
      this_block.setError('Input data type for port "aff_read_data" must have width=32.');
  end
  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'sys_clk','sys_ce')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);

  % (!) Custimize the following generic settings as appropriate. If any settings depend
  %      on input types, make the settings in the "inputTypesKnown" code block.
  %      The addGeneric function takes  3 parameters, generic name, type and constant value.
  %      Supported types are boolean, real, integer and string.
  this_block.addGeneric('RAM_ADDR_WIDTH','integer','10');
  this_block.addGeneric('RAM_DATA_WIDTH','integer','32');

  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('../fifo/ads_async_fifo.v');
  this_block.addFile('../../common/design/fifo/async_fifo.v');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

