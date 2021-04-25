defmodule Inmana.Welcomer do

	def welcome (%{"name" => name, "age" => age}) do

		age = String.to_integer(age)

		name
		|> String.trim()
		|> String.downcase()
		|> evaluate(age)

	end

	defp evaluate("banana", 32) do
		{:ok, "Você é o escolhido, banana"}
	end

	defp evaluate(name, age) when age >= 18 do
		{:ok, "Welcome #{name}"}
	end

	defp evaluate(name, _age) do
		{:error, "#{name} é menor de idade"}
	end

end
